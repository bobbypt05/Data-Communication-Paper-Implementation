bitRate = 5;

[i,plot1] = NRZIPLOT(bitRate);

%Final Average DC component
finalAvgComponent = 0;

for k=1:2000
    finalAvgComponent =  finalAvgComponent + plot1(k);
end

finalAvgComponent = finalAvgComponent/2000;

subplot(1,2,1);
plot(i,plot1,'r');
axis([0 2000 -40 40]);
title([ 'NRZI DC Component Average :' num2str(finalAvgComponent) ]);

[j,plot2] = MNRZIPLOT(bitRate);

finalAvgComponent = 0;

for i=1:2000
    finalAvgComponent =  finalAvgComponent + plot2(i);
end

finalAvgComponent = finalAvgComponent/2000;

subplot(1,2,2);
plot(j,plot2,'b');
axis([0 2000 -50 50]);
title([ 'MNRZI DC Component Average :' num2str(finalAvgComponent)]);
