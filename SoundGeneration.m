amp=10;
fs=20500;
duration=1;
freq=880;
values=0:1/fs:duration;

a=amp*sin(2*pi*freq*values);


sound(a)