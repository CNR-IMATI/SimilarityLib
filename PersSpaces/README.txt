 /********************************************
 * README.txt
* Copyright (c) CNR-IMATI Ge - 2017
 * Author: Silvia Biasotti
 * All rights reserved
********************************************/

This MATLAB routine computes the persistence spaces of a triangle mesh with respect to two given properties 
For technical reasons it is equipped with three executables Ply2Off, persKernel.exe and off2sk.exe that are called internally to the main routine computeBiSpc  (computation of the bi-dimensional persistent space). Some temporary files, temp.off and temp.size,  filtFunc.f, persDiag.pd, persDiagConverted.pd are created during the process and removed before the end of the process.

Usage: computeBiSpc(InputModel,NumberOfElementXHyperplane,Property1,Property2); 

	 -- InputModel: the input file (.ply, without extension);
	 -- NumberOfElementXHyperplane: an integer value, the size of the persistent space will be at most the square of this number, for instance if NumberOfElementXHyperplane=100, the size of the space will be at most 10000
	 -- Property1: a shape property in the form of a vector of scalar values, one value for each mesh vertex
	 -- Property2: a shape property in the form of a vector of scalar values, one value for each mesh vertex

The output is stored in the files pers_InputModel.pers and persSpc_InputModel.space. The first file corresponds to the combined value of the two functions associated to the points of the persistent space. The persistent space is store in the file persSpc_InputModel.space and it is the shape descriptor associated to the model 09_840_50K
	
	
Example: computeBiSpc('09_840_50K',100,'09_840_50K_p1.txt','09_840_50K_p2.txt')
Output: the files pers_09_840_50K.pers and persSpc_09_840_50K.space.
