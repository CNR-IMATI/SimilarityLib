function DATA=HistLAB(namefile,nameout,intervalL,intervalA,intervalB)

   A=load(namefile);
   L=A(:,1);
   aa=A(:,2);
   b=A(:,3);
   hL=histcounts(L,intervalL(2)-intervalL(1),'BinLimits',intervalL,'Normalization','probability');
   ha=histcounts(aa,intervalA(2)-intervalA(1),'BinLimits',intervalA,'Normalization','probability');
   hb=histcounts(b,intervalB(2)-intervalB(1),'BinLimits',intervalB,'Normalization','probability');
   DATA=[hL ha hb];
   save(nameout,'-ascii','DATA');
end
