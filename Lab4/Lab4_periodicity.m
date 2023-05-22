t = 0:1:10;
s1 = t>=2 & t<=8;
s2 = (t>=4 & t<=6)*(2);

x = s1+s2;
x = [x x x x];
subplot(2,1,1);
plot(x);
title("Signal")
r = xcorr(x);
subplot(2,1,2);
plot(r);
title("Auto-correlation");
