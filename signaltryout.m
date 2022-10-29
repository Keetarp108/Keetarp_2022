clear all;
t=0:0.080:2;
Amsg=20;
Acar=05;
fmsg=10;
fcar=150;
kf=7;

msg=Amsg*cos(2*pi*fmsg*t);
subplot(3,1,1);
plot(t,msg);
xlabel('Time');
ylabel('Amplitude');
title('message Signal');
carr=Acar*cos(2*pi*fcar*t);
subplot(3,1,2);
plot(t,carr);
xlabel('Time');
ylabel('Amplitude');
title('carrier');

mod_wave=Acar*cos(2*pi*fcar*t+kf.*sin(2*pi*fmsg*t));
subplot(3,1,3);
plot(t,mod_wave);
xlabel('Time');
ylabel('Amplitude');
title('final signal');
