
//
// This file is autogenerated by make_reciprocal_rom.py
//

module reciprocal_rom(
	input [7:0]			addr_i,
	output reg [7:0]	data_o);

	always @*
	begin
		case (addr_i)
			8'h0: data_o = 8'h0; // 1.0 / 1.0 = 2.0
			8'h1: data_o = 8'hfe; // 1.0 / 1.00390625 = 1.9921875
			8'h2: data_o = 8'hfc; // 1.0 / 1.0078125 = 1.984375
			8'h3: data_o = 8'hfa; // 1.0 / 1.01171875 = 1.9765625
			8'h4: data_o = 8'hf8; // 1.0 / 1.015625 = 1.96875
			8'h5: data_o = 8'hf6; // 1.0 / 1.01953125 = 1.9609375
			8'h6: data_o = 8'hf4; // 1.0 / 1.0234375 = 1.953125
			8'h7: data_o = 8'hf2; // 1.0 / 1.02734375 = 1.9453125
			8'h8: data_o = 8'hf0; // 1.0 / 1.03125 = 1.9375
			8'h9: data_o = 8'hee; // 1.0 / 1.03515625 = 1.9296875
			8'ha: data_o = 8'hec; // 1.0 / 1.0390625 = 1.921875
			8'hb: data_o = 8'hea; // 1.0 / 1.04296875 = 1.9140625
			8'hc: data_o = 8'he9; // 1.0 / 1.046875 = 1.91015625
			8'hd: data_o = 8'he7; // 1.0 / 1.05078125 = 1.90234375
			8'he: data_o = 8'he5; // 1.0 / 1.0546875 = 1.89453125
			8'hf: data_o = 8'he3; // 1.0 / 1.05859375 = 1.88671875
			8'h10: data_o = 8'he1; // 1.0 / 1.0625 = 1.87890625
			8'h11: data_o = 8'he0; // 1.0 / 1.06640625 = 1.875
			8'h12: data_o = 8'hde; // 1.0 / 1.0703125 = 1.8671875
			8'h13: data_o = 8'hdc; // 1.0 / 1.07421875 = 1.859375
			8'h14: data_o = 8'hda; // 1.0 / 1.078125 = 1.8515625
			8'h15: data_o = 8'hd9; // 1.0 / 1.08203125 = 1.84765625
			8'h16: data_o = 8'hd7; // 1.0 / 1.0859375 = 1.83984375
			8'h17: data_o = 8'hd5; // 1.0 / 1.08984375 = 1.83203125
			8'h18: data_o = 8'hd4; // 1.0 / 1.09375 = 1.828125
			8'h19: data_o = 8'hd2; // 1.0 / 1.09765625 = 1.8203125
			8'h1a: data_o = 8'hd0; // 1.0 / 1.1015625 = 1.8125
			8'h1b: data_o = 8'hcf; // 1.0 / 1.10546875 = 1.80859375
			8'h1c: data_o = 8'hcd; // 1.0 / 1.109375 = 1.80078125
			8'h1d: data_o = 8'hcb; // 1.0 / 1.11328125 = 1.79296875
			8'h1e: data_o = 8'hca; // 1.0 / 1.1171875 = 1.7890625
			8'h1f: data_o = 8'hc8; // 1.0 / 1.12109375 = 1.78125
			8'h20: data_o = 8'hc7; // 1.0 / 1.125 = 1.77734375
			8'h21: data_o = 8'hc5; // 1.0 / 1.12890625 = 1.76953125
			8'h22: data_o = 8'hc3; // 1.0 / 1.1328125 = 1.76171875
			8'h23: data_o = 8'hc2; // 1.0 / 1.13671875 = 1.7578125
			8'h24: data_o = 8'hc0; // 1.0 / 1.140625 = 1.75
			8'h25: data_o = 8'hbf; // 1.0 / 1.14453125 = 1.74609375
			8'h26: data_o = 8'hbd; // 1.0 / 1.1484375 = 1.73828125
			8'h27: data_o = 8'hbc; // 1.0 / 1.15234375 = 1.734375
			8'h28: data_o = 8'hba; // 1.0 / 1.15625 = 1.7265625
			8'h29: data_o = 8'hb9; // 1.0 / 1.16015625 = 1.72265625
			8'h2a: data_o = 8'hb7; // 1.0 / 1.1640625 = 1.71484375
			8'h2b: data_o = 8'hb6; // 1.0 / 1.16796875 = 1.7109375
			8'h2c: data_o = 8'hb4; // 1.0 / 1.171875 = 1.703125
			8'h2d: data_o = 8'hb3; // 1.0 / 1.17578125 = 1.69921875
			8'h2e: data_o = 8'hb2; // 1.0 / 1.1796875 = 1.6953125
			8'h2f: data_o = 8'hb0; // 1.0 / 1.18359375 = 1.6875
			8'h30: data_o = 8'haf; // 1.0 / 1.1875 = 1.68359375
			8'h31: data_o = 8'had; // 1.0 / 1.19140625 = 1.67578125
			8'h32: data_o = 8'hac; // 1.0 / 1.1953125 = 1.671875
			8'h33: data_o = 8'haa; // 1.0 / 1.19921875 = 1.6640625
			8'h34: data_o = 8'ha9; // 1.0 / 1.203125 = 1.66015625
			8'h35: data_o = 8'ha8; // 1.0 / 1.20703125 = 1.65625
			8'h36: data_o = 8'ha6; // 1.0 / 1.2109375 = 1.6484375
			8'h37: data_o = 8'ha5; // 1.0 / 1.21484375 = 1.64453125
			8'h38: data_o = 8'ha4; // 1.0 / 1.21875 = 1.640625
			8'h39: data_o = 8'ha2; // 1.0 / 1.22265625 = 1.6328125
			8'h3a: data_o = 8'ha1; // 1.0 / 1.2265625 = 1.62890625
			8'h3b: data_o = 8'ha0; // 1.0 / 1.23046875 = 1.625
			8'h3c: data_o = 8'h9e; // 1.0 / 1.234375 = 1.6171875
			8'h3d: data_o = 8'h9d; // 1.0 / 1.23828125 = 1.61328125
			8'h3e: data_o = 8'h9c; // 1.0 / 1.2421875 = 1.609375
			8'h3f: data_o = 8'h9a; // 1.0 / 1.24609375 = 1.6015625
			8'h40: data_o = 8'h99; // 1.0 / 1.25 = 1.59765625
			8'h41: data_o = 8'h98; // 1.0 / 1.25390625 = 1.59375
			8'h42: data_o = 8'h97; // 1.0 / 1.2578125 = 1.58984375
			8'h43: data_o = 8'h95; // 1.0 / 1.26171875 = 1.58203125
			8'h44: data_o = 8'h94; // 1.0 / 1.265625 = 1.578125
			8'h45: data_o = 8'h93; // 1.0 / 1.26953125 = 1.57421875
			8'h46: data_o = 8'h92; // 1.0 / 1.2734375 = 1.5703125
			8'h47: data_o = 8'h90; // 1.0 / 1.27734375 = 1.5625
			8'h48: data_o = 8'h8f; // 1.0 / 1.28125 = 1.55859375
			8'h49: data_o = 8'h8e; // 1.0 / 1.28515625 = 1.5546875
			8'h4a: data_o = 8'h8d; // 1.0 / 1.2890625 = 1.55078125
			8'h4b: data_o = 8'h8b; // 1.0 / 1.29296875 = 1.54296875
			8'h4c: data_o = 8'h8a; // 1.0 / 1.296875 = 1.5390625
			8'h4d: data_o = 8'h89; // 1.0 / 1.30078125 = 1.53515625
			8'h4e: data_o = 8'h88; // 1.0 / 1.3046875 = 1.53125
			8'h4f: data_o = 8'h87; // 1.0 / 1.30859375 = 1.52734375
			8'h50: data_o = 8'h86; // 1.0 / 1.3125 = 1.5234375
			8'h51: data_o = 8'h84; // 1.0 / 1.31640625 = 1.515625
			8'h52: data_o = 8'h83; // 1.0 / 1.3203125 = 1.51171875
			8'h53: data_o = 8'h82; // 1.0 / 1.32421875 = 1.5078125
			8'h54: data_o = 8'h81; // 1.0 / 1.328125 = 1.50390625
			8'h55: data_o = 8'h80; // 1.0 / 1.33203125 = 1.5
			8'h56: data_o = 8'h7f; // 1.0 / 1.3359375 = 1.49609375
			8'h57: data_o = 8'h7e; // 1.0 / 1.33984375 = 1.4921875
			8'h58: data_o = 8'h7d; // 1.0 / 1.34375 = 1.48828125
			8'h59: data_o = 8'h7b; // 1.0 / 1.34765625 = 1.48046875
			8'h5a: data_o = 8'h7a; // 1.0 / 1.3515625 = 1.4765625
			8'h5b: data_o = 8'h79; // 1.0 / 1.35546875 = 1.47265625
			8'h5c: data_o = 8'h78; // 1.0 / 1.359375 = 1.46875
			8'h5d: data_o = 8'h77; // 1.0 / 1.36328125 = 1.46484375
			8'h5e: data_o = 8'h76; // 1.0 / 1.3671875 = 1.4609375
			8'h5f: data_o = 8'h75; // 1.0 / 1.37109375 = 1.45703125
			8'h60: data_o = 8'h74; // 1.0 / 1.375 = 1.453125
			8'h61: data_o = 8'h73; // 1.0 / 1.37890625 = 1.44921875
			8'h62: data_o = 8'h72; // 1.0 / 1.3828125 = 1.4453125
			8'h63: data_o = 8'h71; // 1.0 / 1.38671875 = 1.44140625
			8'h64: data_o = 8'h70; // 1.0 / 1.390625 = 1.4375
			8'h65: data_o = 8'h6f; // 1.0 / 1.39453125 = 1.43359375
			8'h66: data_o = 8'h6e; // 1.0 / 1.3984375 = 1.4296875
			8'h67: data_o = 8'h6d; // 1.0 / 1.40234375 = 1.42578125
			8'h68: data_o = 8'h6c; // 1.0 / 1.40625 = 1.421875
			8'h69: data_o = 8'h6b; // 1.0 / 1.41015625 = 1.41796875
			8'h6a: data_o = 8'h6a; // 1.0 / 1.4140625 = 1.4140625
			8'h6b: data_o = 8'h69; // 1.0 / 1.41796875 = 1.41015625
			8'h6c: data_o = 8'h68; // 1.0 / 1.421875 = 1.40625
			8'h6d: data_o = 8'h67; // 1.0 / 1.42578125 = 1.40234375
			8'h6e: data_o = 8'h66; // 1.0 / 1.4296875 = 1.3984375
			8'h6f: data_o = 8'h65; // 1.0 / 1.43359375 = 1.39453125
			8'h70: data_o = 8'h64; // 1.0 / 1.4375 = 1.390625
			8'h71: data_o = 8'h63; // 1.0 / 1.44140625 = 1.38671875
			8'h72: data_o = 8'h62; // 1.0 / 1.4453125 = 1.3828125
			8'h73: data_o = 8'h61; // 1.0 / 1.44921875 = 1.37890625
			8'h74: data_o = 8'h60; // 1.0 / 1.453125 = 1.375
			8'h75: data_o = 8'h5f; // 1.0 / 1.45703125 = 1.37109375
			8'h76: data_o = 8'h5e; // 1.0 / 1.4609375 = 1.3671875
			8'h77: data_o = 8'h5d; // 1.0 / 1.46484375 = 1.36328125
			8'h78: data_o = 8'h5c; // 1.0 / 1.46875 = 1.359375
			8'h79: data_o = 8'h5b; // 1.0 / 1.47265625 = 1.35546875
			8'h7a: data_o = 8'h5a; // 1.0 / 1.4765625 = 1.3515625
			8'h7b: data_o = 8'h59; // 1.0 / 1.48046875 = 1.34765625
			8'h7c: data_o = 8'h58; // 1.0 / 1.484375 = 1.34375
			8'h7d: data_o = 8'h58; // 1.0 / 1.48828125 = 1.34375
			8'h7e: data_o = 8'h57; // 1.0 / 1.4921875 = 1.33984375
			8'h7f: data_o = 8'h56; // 1.0 / 1.49609375 = 1.3359375
			8'h80: data_o = 8'h55; // 1.0 / 1.5 = 1.33203125
			8'h81: data_o = 8'h54; // 1.0 / 1.50390625 = 1.328125
			8'h82: data_o = 8'h53; // 1.0 / 1.5078125 = 1.32421875
			8'h83: data_o = 8'h52; // 1.0 / 1.51171875 = 1.3203125
			8'h84: data_o = 8'h51; // 1.0 / 1.515625 = 1.31640625
			8'h85: data_o = 8'h50; // 1.0 / 1.51953125 = 1.3125
			8'h86: data_o = 8'h50; // 1.0 / 1.5234375 = 1.3125
			8'h87: data_o = 8'h4f; // 1.0 / 1.52734375 = 1.30859375
			8'h88: data_o = 8'h4e; // 1.0 / 1.53125 = 1.3046875
			8'h89: data_o = 8'h4d; // 1.0 / 1.53515625 = 1.30078125
			8'h8a: data_o = 8'h4c; // 1.0 / 1.5390625 = 1.296875
			8'h8b: data_o = 8'h4b; // 1.0 / 1.54296875 = 1.29296875
			8'h8c: data_o = 8'h4a; // 1.0 / 1.546875 = 1.2890625
			8'h8d: data_o = 8'h4a; // 1.0 / 1.55078125 = 1.2890625
			8'h8e: data_o = 8'h49; // 1.0 / 1.5546875 = 1.28515625
			8'h8f: data_o = 8'h48; // 1.0 / 1.55859375 = 1.28125
			8'h90: data_o = 8'h47; // 1.0 / 1.5625 = 1.27734375
			8'h91: data_o = 8'h46; // 1.0 / 1.56640625 = 1.2734375
			8'h92: data_o = 8'h46; // 1.0 / 1.5703125 = 1.2734375
			8'h93: data_o = 8'h45; // 1.0 / 1.57421875 = 1.26953125
			8'h94: data_o = 8'h44; // 1.0 / 1.578125 = 1.265625
			8'h95: data_o = 8'h43; // 1.0 / 1.58203125 = 1.26171875
			8'h96: data_o = 8'h42; // 1.0 / 1.5859375 = 1.2578125
			8'h97: data_o = 8'h42; // 1.0 / 1.58984375 = 1.2578125
			8'h98: data_o = 8'h41; // 1.0 / 1.59375 = 1.25390625
			8'h99: data_o = 8'h40; // 1.0 / 1.59765625 = 1.25
			8'h9a: data_o = 8'h3f; // 1.0 / 1.6015625 = 1.24609375
			8'h9b: data_o = 8'h3e; // 1.0 / 1.60546875 = 1.2421875
			8'h9c: data_o = 8'h3e; // 1.0 / 1.609375 = 1.2421875
			8'h9d: data_o = 8'h3d; // 1.0 / 1.61328125 = 1.23828125
			8'h9e: data_o = 8'h3c; // 1.0 / 1.6171875 = 1.234375
			8'h9f: data_o = 8'h3b; // 1.0 / 1.62109375 = 1.23046875
			8'ha0: data_o = 8'h3b; // 1.0 / 1.625 = 1.23046875
			8'ha1: data_o = 8'h3a; // 1.0 / 1.62890625 = 1.2265625
			8'ha2: data_o = 8'h39; // 1.0 / 1.6328125 = 1.22265625
			8'ha3: data_o = 8'h38; // 1.0 / 1.63671875 = 1.21875
			8'ha4: data_o = 8'h38; // 1.0 / 1.640625 = 1.21875
			8'ha5: data_o = 8'h37; // 1.0 / 1.64453125 = 1.21484375
			8'ha6: data_o = 8'h36; // 1.0 / 1.6484375 = 1.2109375
			8'ha7: data_o = 8'h35; // 1.0 / 1.65234375 = 1.20703125
			8'ha8: data_o = 8'h35; // 1.0 / 1.65625 = 1.20703125
			8'ha9: data_o = 8'h34; // 1.0 / 1.66015625 = 1.203125
			8'haa: data_o = 8'h33; // 1.0 / 1.6640625 = 1.19921875
			8'hab: data_o = 8'h32; // 1.0 / 1.66796875 = 1.1953125
			8'hac: data_o = 8'h32; // 1.0 / 1.671875 = 1.1953125
			8'had: data_o = 8'h31; // 1.0 / 1.67578125 = 1.19140625
			8'hae: data_o = 8'h30; // 1.0 / 1.6796875 = 1.1875
			8'haf: data_o = 8'h30; // 1.0 / 1.68359375 = 1.1875
			8'hb0: data_o = 8'h2f; // 1.0 / 1.6875 = 1.18359375
			8'hb1: data_o = 8'h2e; // 1.0 / 1.69140625 = 1.1796875
			8'hb2: data_o = 8'h2e; // 1.0 / 1.6953125 = 1.1796875
			8'hb3: data_o = 8'h2d; // 1.0 / 1.69921875 = 1.17578125
			8'hb4: data_o = 8'h2c; // 1.0 / 1.703125 = 1.171875
			8'hb5: data_o = 8'h2b; // 1.0 / 1.70703125 = 1.16796875
			8'hb6: data_o = 8'h2b; // 1.0 / 1.7109375 = 1.16796875
			8'hb7: data_o = 8'h2a; // 1.0 / 1.71484375 = 1.1640625
			8'hb8: data_o = 8'h29; // 1.0 / 1.71875 = 1.16015625
			8'hb9: data_o = 8'h29; // 1.0 / 1.72265625 = 1.16015625
			8'hba: data_o = 8'h28; // 1.0 / 1.7265625 = 1.15625
			8'hbb: data_o = 8'h27; // 1.0 / 1.73046875 = 1.15234375
			8'hbc: data_o = 8'h27; // 1.0 / 1.734375 = 1.15234375
			8'hbd: data_o = 8'h26; // 1.0 / 1.73828125 = 1.1484375
			8'hbe: data_o = 8'h25; // 1.0 / 1.7421875 = 1.14453125
			8'hbf: data_o = 8'h25; // 1.0 / 1.74609375 = 1.14453125
			8'hc0: data_o = 8'h24; // 1.0 / 1.75 = 1.140625
			8'hc1: data_o = 8'h23; // 1.0 / 1.75390625 = 1.13671875
			8'hc2: data_o = 8'h23; // 1.0 / 1.7578125 = 1.13671875
			8'hc3: data_o = 8'h22; // 1.0 / 1.76171875 = 1.1328125
			8'hc4: data_o = 8'h21; // 1.0 / 1.765625 = 1.12890625
			8'hc5: data_o = 8'h21; // 1.0 / 1.76953125 = 1.12890625
			8'hc6: data_o = 8'h20; // 1.0 / 1.7734375 = 1.125
			8'hc7: data_o = 8'h20; // 1.0 / 1.77734375 = 1.125
			8'hc8: data_o = 8'h1f; // 1.0 / 1.78125 = 1.12109375
			8'hc9: data_o = 8'h1e; // 1.0 / 1.78515625 = 1.1171875
			8'hca: data_o = 8'h1e; // 1.0 / 1.7890625 = 1.1171875
			8'hcb: data_o = 8'h1d; // 1.0 / 1.79296875 = 1.11328125
			8'hcc: data_o = 8'h1c; // 1.0 / 1.796875 = 1.109375
			8'hcd: data_o = 8'h1c; // 1.0 / 1.80078125 = 1.109375
			8'hce: data_o = 8'h1b; // 1.0 / 1.8046875 = 1.10546875
			8'hcf: data_o = 8'h1b; // 1.0 / 1.80859375 = 1.10546875
			8'hd0: data_o = 8'h1a; // 1.0 / 1.8125 = 1.1015625
			8'hd1: data_o = 8'h19; // 1.0 / 1.81640625 = 1.09765625
			8'hd2: data_o = 8'h19; // 1.0 / 1.8203125 = 1.09765625
			8'hd3: data_o = 8'h18; // 1.0 / 1.82421875 = 1.09375
			8'hd4: data_o = 8'h18; // 1.0 / 1.828125 = 1.09375
			8'hd5: data_o = 8'h17; // 1.0 / 1.83203125 = 1.08984375
			8'hd6: data_o = 8'h16; // 1.0 / 1.8359375 = 1.0859375
			8'hd7: data_o = 8'h16; // 1.0 / 1.83984375 = 1.0859375
			8'hd8: data_o = 8'h15; // 1.0 / 1.84375 = 1.08203125
			8'hd9: data_o = 8'h15; // 1.0 / 1.84765625 = 1.08203125
			8'hda: data_o = 8'h14; // 1.0 / 1.8515625 = 1.078125
			8'hdb: data_o = 8'h13; // 1.0 / 1.85546875 = 1.07421875
			8'hdc: data_o = 8'h13; // 1.0 / 1.859375 = 1.07421875
			8'hdd: data_o = 8'h12; // 1.0 / 1.86328125 = 1.0703125
			8'hde: data_o = 8'h12; // 1.0 / 1.8671875 = 1.0703125
			8'hdf: data_o = 8'h11; // 1.0 / 1.87109375 = 1.06640625
			8'he0: data_o = 8'h11; // 1.0 / 1.875 = 1.06640625
			8'he1: data_o = 8'h10; // 1.0 / 1.87890625 = 1.0625
			8'he2: data_o = 8'hf; // 1.0 / 1.8828125 = 1.05859375
			8'he3: data_o = 8'hf; // 1.0 / 1.88671875 = 1.05859375
			8'he4: data_o = 8'he; // 1.0 / 1.890625 = 1.0546875
			8'he5: data_o = 8'he; // 1.0 / 1.89453125 = 1.0546875
			8'he6: data_o = 8'hd; // 1.0 / 1.8984375 = 1.05078125
			8'he7: data_o = 8'hd; // 1.0 / 1.90234375 = 1.05078125
			8'he8: data_o = 8'hc; // 1.0 / 1.90625 = 1.046875
			8'he9: data_o = 8'hc; // 1.0 / 1.91015625 = 1.046875
			8'hea: data_o = 8'hb; // 1.0 / 1.9140625 = 1.04296875
			8'heb: data_o = 8'ha; // 1.0 / 1.91796875 = 1.0390625
			8'hec: data_o = 8'ha; // 1.0 / 1.921875 = 1.0390625
			8'hed: data_o = 8'h9; // 1.0 / 1.92578125 = 1.03515625
			8'hee: data_o = 8'h9; // 1.0 / 1.9296875 = 1.03515625
			8'hef: data_o = 8'h8; // 1.0 / 1.93359375 = 1.03125
			8'hf0: data_o = 8'h8; // 1.0 / 1.9375 = 1.03125
			8'hf1: data_o = 8'h7; // 1.0 / 1.94140625 = 1.02734375
			8'hf2: data_o = 8'h7; // 1.0 / 1.9453125 = 1.02734375
			8'hf3: data_o = 8'h6; // 1.0 / 1.94921875 = 1.0234375
			8'hf4: data_o = 8'h6; // 1.0 / 1.953125 = 1.0234375
			8'hf5: data_o = 8'h5; // 1.0 / 1.95703125 = 1.01953125
			8'hf6: data_o = 8'h5; // 1.0 / 1.9609375 = 1.01953125
			8'hf7: data_o = 8'h4; // 1.0 / 1.96484375 = 1.015625
			8'hf8: data_o = 8'h4; // 1.0 / 1.96875 = 1.015625
			8'hf9: data_o = 8'h3; // 1.0 / 1.97265625 = 1.01171875
			8'hfa: data_o = 8'h3; // 1.0 / 1.9765625 = 1.01171875
			8'hfb: data_o = 8'h2; // 1.0 / 1.98046875 = 1.0078125
			8'hfc: data_o = 8'h2; // 1.0 / 1.984375 = 1.0078125
			8'hfd: data_o = 8'h1; // 1.0 / 1.98828125 = 1.00390625
			8'hfe: data_o = 8'h1; // 1.0 / 1.9921875 = 1.00390625
			8'hff: data_o = 8'h0; // 1.0 / 1.99609375 = 1.0
		endcase
	end
endmodule

