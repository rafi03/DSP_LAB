% x = [-3 2 -1 1];
t = 0:1:40;
s1 = t>=0 & t<=10;
s2 = (t>=15 & t<=25)*(-1);
% x = input("Enter X Value: ");
% n = length(x);
x = s1+s2;
subplot(3,1,1);
plot(x);
title("Sending")
s3 = t>=10 & t<=20;
s4 = (t>=25 & t<=35)*(-1);
y = s3+s4;
y = y+0.5*rand(size(y));
subplot(3,1,2);
plot(y);
title("Receiving");
r = xcorr(y,x);

maxim = -1;
indx = -1;
for i=1:length(r)
    if r(1,i) > maxim
        maxim = r(1,i);
        indx = i;
    end
end
% disp(r)
% disp(answ)
disp(indx-40-1);
subplot(3,1,3);
plot(-40:1:40,r);
title("Correlation");
% xlim([1 n+(n2-1)]);
% title("Built in");
% 
% subplot(4,1,4);
% stem(answ,'filled');
% xlim([1 n+(n2-1)]);
% title("Signal");
