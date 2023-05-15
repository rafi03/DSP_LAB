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

% maxim = -1;
% indx = -1;
% for i=1:length(r)
%     if r(1,i) > maxim
%         maxim = r(1,i);
%         indx = i;
%     end
% end
% disp(r)
% disp(answ)
%disp(indx-40-1);
% subplot(3,1,3);
% plot(-40:1:40,r);
% title("Correlation");
% xlim([1 n+(n2-1)]);
% title("Built in");
% 
% subplot(4,1,4);
% stem(answ,'filled');
% xlim([1 n+(n2-1)]);
% title("Signal");
