 /********************************************
 * README.txt
* Copyright (c) CNR-IMATI Ge - 2017
 * Author: Silvia Biasotti, Elia Moscoso Thompson
 * All rights reserved
********************************************/

Minimal Bounding Box (MBB) computed usingthe library available at http://clb.demon.fi/minobb/test/ModelView.html (Apache licence).

Compiled as static, no dependencies.
Tested on Ubuntu 14.04 and 16.10, and CentOs.
This routine it is recommended for 50K and 100K versions of the 3D models but can afford also full resolution models.

Attention: currently, the library adopted used this executable reads float values. In the GRAVITATE dataset this suffices for three datasets over four, indeed for the "Naukratis dataset" (the unit measure is the metre) it is necessary to change the coordinate system into centimetres (and finally convert back the box).

The output is a json file containing the MBB of the object in terms of: Cartesian coordinates of the box, length of the three axes and diagonal of the minimal bounding box.

Example:
./MBB-standalone 09_840_50K.ply > 09_840_50K_mbb.json

This output is used for:
visualization (desktop UI)
similarity computation (envelope).
