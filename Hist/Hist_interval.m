function DATA=Hist_interval(namefile,nameout,numbins,binlimits)

  A=load(namefile);
  h=histcounts(A,numbins,'BinLimits',binlimits,'Normalization','probability');

 save(nameout,'-ascii','h');
end
