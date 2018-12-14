 /********************************************
 * README.txt
* Copyright (c) CNR-IMATI Ge - 2016
 * Author: Silvia Biasotti
 * All rights reserved
********************************************/

This executable computes the persistence diagram of a triangle mesh with respect to a given property 

Usage: ../persCrtPts Input Threshold OutputMax [-all] [-local]

	 -- Input: the input file (.ply, specify extension);
	 -- Threshold: integer value in [0,100] (persistence threshold);
	 -- OutputMax: the output file (base name);
	 -- -all: in general check this option to have all critical points stored in the persistence diagram;
	 -- -local (optional): output files are fist written locally, then copied to OutputMax;
	
	
Example persCrtPts input.ply 10 output -all
