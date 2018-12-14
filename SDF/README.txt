 /********************************************
 * README.txt
* Copyright (c) CNR-IMATI Ge - 2017
 * Author: Silvia Biasotti
 * All rights reserved
********************************************/

Shape Diameter Function (SDF) computed using the CGAL library and the routine CGAL::sdf_values.

Compiled as static (to include the CGAL library), no dependencies.
Tested on Ubuntu 14.04 and 16.10, and CentOs.
This routine is computationally expensive (and CGAL is slow) so it is recommended only for 50K and 100K versions of the 3D models (it takes 10-15 minutes).

Usage: ./SDF model angle_paramenter > output
model refers to the 3D model, without extension (the model is supposed to be a ply file). 
angle_paramenter is an optional parameter, if not set is supposed to be 30 degrees.
The executable prints the output on the standard IO.
It is possible to redirect the output in the standard way.

Since CGAL does not support .ply files, there is a converter from .ply format to .off, ./Ply2Off (the file conversion is done directly from the ./SDF executable). A temp.off file is created and removed before the end of the process.

Example:
./SDF '1909\ 3-10\ 19_50K' 30 > 1909\ 3-10\ 19_50K_SDF30.txt

The file 1909\ 3-10\ 19_50K_SDF30.txt contains a real value for each triangle, one value per line.

This output is used for:
visualization (desktop UI)
histogram computation (of the sdf)
prevalend thickness computation.
