 /********************************************
 * README.txt
* Copyright (c) CNR-IMATI Ge - 2016
 * Author: Silvia Biasotti
 * All rights reserved
********************************************/

This function computes the mean curvature of a triangle mesh. It builds on the toolbox graph tool, freely available on on MatlabCentral. The toolbox graph is not provided and can be found at: https://www.mathworks.com/matlabcentral/fileexchange/5355-toolbox-graph

Usage: Cmean=Curvature('name','nameoutput')

Input: a file name (it corresponds to a triangle mesh).
Output: a file whose name is "nameoutput".
Both input and output are the two URI of the files.

Note1, somewhere add the path to the toolbox graph. If the current configutation is kept, it is enough to type:
path(path,'toolbox_graph/toolbox/');
path(path,'toolbox_graph/');

Note2: at the end of the run, it is a good practice to set:
clear options;
because other MATLAB tools could use the same structure.

