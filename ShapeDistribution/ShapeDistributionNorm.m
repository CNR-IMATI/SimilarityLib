function DATA=ShapeDistributionNorm(filename,fileout,numbins,binlimits)
%computes the shape distribution (an histogram) of the varition of the
%eucliean distances among vertices of the model.
%the points on the 3D model are equispatially gridded.
%parameters: the nubmer of bins and the interval of variation of the
%histogram

pcCloud=pcread(filename);

gridStep = 0.2;
%SD = [0.0 0.0; 0.0 0.0];

ptCloudA = pcdownsample(pcCloud,'gridAverage', gridStep);
SD = pdist(ptCloudA.Location(),'euclidean');
    
%DATA=[min(min(SD)) max(max(SD))];

DATA=histcounts(SD,numbins,'BinLimits',binlimits,'Normalization','probability');
save(fileout,'-ascii','DATA');
end


