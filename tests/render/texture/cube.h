// 
// Copyright (C) 2011-2014 Jeff Bush
// 
// This program is free software; you can redistribute it and/or
// modify it under the terms of the GNU General Public License
// as published by the Free Software Foundation; either version 2
// of the License, or (at your option) any later version.
//
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.
//
// You should have received a copy of the GNU General Public License
// along with this program; if not, write to the Free Software
// Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA.
// 

#pragma once

const int kNumCubeVertices = 24;
const float kCubeVertices[] = {
	// Front face
	0.5, -0.5, 0.5, 1.0, 0.0,
	-0.5, -0.5, 0.5, 1.0, 1.0,
	-0.5, 0.5, 0.5, 0.0, 1.0,
	0.5, 0.5, 0.5, 0.0, 0.0,

	// Right side
	0.5, 0.5, 0.5, 1.0, 0.0,
	0.5, 0.5, -0.5, 1.0, 1.0,
	0.5, -0.5, -0.5, 0.0, 1.0,
	0.5, -0.5, 0.5, 0.0, 0.0,

	// Left side
	-0.5, 0.5, 0.5, 0.0, 0.0,
	-0.5, -0.5, 0.5, 1.0, 0.0,
	-0.5, -0.5, -0.5, 1.0, 1.0,
	-0.5, 0.5, -0.5, 0.0, 1.0,

	// Back
	0.5, 0.5, -0.5, 0.0, 0.0,
	-0.5, 0.5, -0.5, 1.0, 0.0,
	-0.5, -0.5, -0.5, 1.0, 1.0,
	0.5, -0.5, -0.5, 0.0, 1.0,

	// Top
	-0.5, 0.5, 0.5, 0.0, 0.0,
	-0.5, 0.5, -0.5, 1.0, 0.0,
	0.5, 0.5, -0.5, 1.0, 1.0,
	0.5, 0.5, 0.5, 0.0, 1.0,

	// Bottom
	0.5, -0.5, 0.5, 0.0, 0.0,
	0.5, -0.5, -0.5, 1.0, 0.0,
	-0.5, -0.5, -0.5, 1.0, 1.0,
	-0.5, -0.5, 0.5, 0.0, 1.0
};

const int kNumCubeIndices = 36;
const int kCubeIndices[] = {
	2, 1, 0, 
	0, 3, 2, 
	6, 5, 4, 
	4, 7, 6, 
	10, 9, 8, 
	8, 11, 10, 
	14, 13, 12, 
	12, 15, 14, 
	18, 17, 16, 
	16, 19, 18, 
	22, 21, 20, 
	20, 23, 22
};
