 /********************************************
 * README.txt
* Copyright (c) CNR-IMATI Ge - 2017
 * Author: Silvia Biasotti
 * All rights reserved
********************************************/

This code computes the Hausdorff distance between two persistent spaces.

Usage: hd = HausdorffDistance(persSpc_1.space,persSpc_1.space); or  [hd D] = HausdorffDistance(...,lmf)

Input: two persistent spaces (store in the files persSpc_1.space and persSpc_1.space, respectively). 
lmf can be set to 0 or 1 (0 if the matrix is small and 1 is the matrix is large).

	-- hd is the Hausdorff distance between the two persistent spaces. It is printed in the standard output (and stored in the variable hd).
	-- D represents the matrix of the punctual distances among the elements of the two persistent spaces. It is a rectangular matrix and it is available only if lmf is 0.


