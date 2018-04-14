bitRate = 5;

[i,plot1] = NRZIPLOT(bitRate);
subplot(1,2,1);
plot(i,plot1,'r');
title('NRZI DC Component Average :');

[j,plot2] = MNRZIPLOT(bitRate);
subplot(1,2,2);
plot(j,plot2,'r');
title('MNRZI DC Component Average :');
