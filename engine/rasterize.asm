; Algorithm is based on:
; "A Parallel Algorithm for Polygon Rasterization" Juan Pineda, 1988
; http://people.csail.mit.edu/ericchan/bib/pdf/p17-pineda.pdf
;
; Memory map
;
;  0 - Start of code
;  n - end of code
;  0xfc000 Frame buffer start (frame buffer is 64x64 pixels, RGBA)
;  0x100000 Frame buffer end, top of memory
;


_start				s0 = cr0		; get my strand ID
					if s0 goto startOtherThreads

					u10 = &coords
					u0 = mem_l[u10]
					call queueColor
					
					f0 = mem_l[u10 + 4]
					f1 = mem_l[u10 + 8]
					f3 = mem_l[zValue]
					call queueVertex

					f0 = mem_l[u10 + 12]
					f1 = mem_l[u10 + 16]
					f3 = mem_l[zValue]
					nop
					call queueVertex

					f0 = mem_l[u10 + 20]
					f1 = mem_l[u10 + 24]
					f3 = mem_l[zValue]
					call queueVertex

					s0 = 15
					cr30 = s0		; Start all strands
					goto startOtherThreads

coords				.word 0xff00
					.float -0.9, 0.9, 0.8, 0.7, 0.5, -0.7					
zValue				.float 1.0


; Set up variables					
; For a point x, y: (x - x0) dY - (y - y0) dX > 0
#define SETUP_EDGE(x1, y1, x2, y2, edgeval, tmpvec, hstep, vstep) \
		hstep = y2 - y1 \
		vstep = x2 - x1 \
		edgeval = mem_l[step_vector] \
		edgeval = edgeval - x1 \
		edgeval = edgeval * hstep \
		tmpvec = -y1 \
		tmpvec = tmpvec * vstep \
		edgeval = edgeval - tmpvec \
		hstep = hstep * 16

#define x0 u0
#define y0 u1
#define x1 u2
#define y1 u3
#define x2 u4
#define y2 u5
#define hStep0 u6
#define vStep0 u7
#define rowCount u9
#define mask0 u10
#define colorVal u11
#define ptr u12
#define mask1 u13
#define hStep1 u14
#define vStep1 u15
#define hStep2 u16
#define vStep2 u17
#define strandId u19
#define tmp1 u20
#define cmdPtr u21
#define tmp2 u22

; v0 is temporary
#define colorVector v1
#define edgeVal0 v2
#define edgeVal1 v3
#define edgeVal2 v4


startOtherThreads	strandId = cr0
					cmdPtr = &cmdFifo

					NUM_ROWS = 64

triangleLoop		colorVal = mem_l[cmdPtr]
					x0 = mem_l[cmdPtr + 4]	
					y0 = mem_l[cmdPtr + 8]	
					x1 = mem_l[cmdPtr + 12]	
					y1 = mem_l[cmdPtr + 16]
					x2 = mem_l[cmdPtr + 20]
					y2 = mem_l[cmdPtr + 24]
					cmdPtr = cmdPtr + 28

					SETUP_EDGE(x0, y0, x1, y1, edgeVal0, v0, hStep0, vStep0)
					SETUP_EDGE(x1, y1, x2, y2, edgeVal1, v0, hStep1, vStep1)
					SETUP_EDGE(x2, y2, x0, y0, edgeVal2, v0, hStep2, vStep2)

					rowCount = NUM_ROWS		; row counter (256)
					colorVector = colorVal

					ptr = mem_l[fbstart]; output pointer

					; Each strand fills one vertical strip.  Compute
					; the offsets here.
					tmp1 = strandId << 6	; multiply * 64
					ptr = ptr + tmp1

					tmp1 = hStep0 * strandId
 					edgeVal0 = edgeVal0 + tmp1
					tmp1 = hStep1 * strandId
 					edgeVal1 = edgeVal1 + tmp1
					tmp1 = hStep2 * strandId
 					edgeVal2 = edgeVal2 + tmp1

rowLoop				mask0 = edgeVal0 < 0				; Test 16 pixels
					mask1 = edgeVal1 < 0
					mask0 = mask0 & mask1
					mask1 = edgeVal2 < 0
					mask0 = mask0 & mask1
					mem_l[ptr]{mask0} = colorVector	; color pixels
					ptr = ptr + 256		; update pointer
					edgeVal0 = edgeVal0 - vStep0 
					edgeVal1 = edgeVal1 - vStep1
					edgeVal2 = edgeVal2 - vStep2 
					rowCount = rowCount - 1		; deduct row count
					if rowCount goto rowLoop

					; Are there more commands in the FIFO?
					tmp1 = mem_l[cmdFifoLength]
					tmp2 = &cmdFifo
					tmp1 = tmp1 + tmp2
					tmp2 = cmdPtr < tmp1
					if tmp2 goto triangleLoop
					
					; No, falls through

					nop
					nop
					nop
					nop
					nop
					nop
					nop
					nop
					cr31 = u0

					.align 64
step_vector			.word 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15
fbstart				.word 0xfc000



; f0 - x
; f1 - y
; f2 - z
; f3 - w
queueVertex			u4 = &cmdFifo
					u5 = mem_l[cmdFifoLength]
					u5 = u5 << 2	; multiply times 4
					u4 = u4 + u5

					; Convert from screen space to raster coordinates...
					; -1 to 1 -> 0 to 63
					f6 = mem_l[halfTileSizeF]
					u7 = mem_l[halfTileSizeI]

					f9 = reciprocal(f3)
					
					f0 = f0 * f9				; perspective divide
					u8 = sftoi(f0, f6)			; x
					u8 = u8 + u7
					mem_l[u4] = u8

					f1 = f1 * f9				; perspective divide
					u8 = sftoi(f1, f6)			; y
					u8 = u7 - u8 
					mem_l[u4 + 4] = u8

					u5 = mem_l[cmdFifoLength]
					u5 = u5 + 2
					mem_l[cmdFifoLength] = u5
					pc = link

halfTileSizeF		.float 32.0
halfTileSizeI		.word 32

; u0 - color
queueColor			u1 = &cmdFifo
					u2 = mem_l[cmdFifoLength]
					u2 = u2 << 2	; multiply times 4
					u1 = u1 + u2
					mem_l[u1] = u0

					u2 = mem_l[cmdFifoLength]
					u2 = u2 + 1
					mem_l[cmdFifoLength] = u2

					pc = link

cmdFifoLength		.word 0			; Number of words
cmdFifo				.reserve 256




