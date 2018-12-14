 /********************************************
 * README.txt
* Copyright (c) CNR-IMATI Ge - 2017
 * Author: Silvia Biasotti
 * All rights reserved
********************************************/


MATLAB routine to build the Histogram representing the Shape Distibution function.

Tested on Ubuntu 14.04 and Windows 10.

Usage: DATA=ShapeDistributionNorm(namefile, nameoutput, numbins, interval);

The input is contained in the file 'namefile' and it is supposed to be a 3D model in .ply format.

The parameters bins and interval determine the number of bins of the histogram and the range of the scalar values. To be comparable, two shape distributions MUST be computed with the same settings of the parameters bins and interval.

Example:
DATA=ShapeDistributionNorm('09_840_50K.ply','09_840_50K_SD.txt',400,[0,50]);

The file 09_840_50K.ply is the 3D model in .ply format.
The file 09_840_50K_SD.txt contains the shape distribution descriptor obtained in the previous example.

This output is used for:
similarity evaluation, non-sherd models.
