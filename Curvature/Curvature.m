%********************************************
% * Curvature.m
% * Copyright (c) CNR-IMATI Ge - 2016
% * Author: Silvia Biasotti
% * All rights reserved
% ********************************************

%This function computes the curvature of a triangle mesh (contained in name) and stores it in the file output
%Note: remember to add the link to the paths of the toolbox_graph tool, currently in the two subfolders toolbox_graph and toolbox_graph/toolbox/

function [Cmean] = Curvature(name,output)
options.name = name;
[vertex,faces] = read_mesh(options.name);
options.curvature_smoothing = 10;
options.verb = 0;
[Umin,Umax,Cmin,Cmax,Cmean,Cgauss,Normal] = compute_curvature(vertex,faces,options);
save(output,'-ascii','Cmean');
