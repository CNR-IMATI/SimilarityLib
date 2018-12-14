 /********************************************
 * README.txt
* Copyright (c) CNR-IMATI Ge - 2016
 * Author: Silvia Biasotti
 * All rights reserved
********************************************/

This executable computes the volume for a triangle mesh and prints it in the standard output
Note: it runs over any triangle mesh (also with bondary components) but the volume is correct only case of watertight meshes (closed surfaces). Otherwise it computes an approximation, virtually closing it with prisms centered in the origin of the Cartesian coordinates.

Usage: ./VolumeTIN nameTIN

nameTIN: path/filename of the TIN model, without any extension 
