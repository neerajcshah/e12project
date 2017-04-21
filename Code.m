%% E12 Project
w0 = 440;
T = (2*pi)/w0;

[file, Fs] = audioread('A.wav');
Fs

sound(file, Fs);

t=[1/Fs:1/Fs:length(file)/Fs];
plot(t, file);

