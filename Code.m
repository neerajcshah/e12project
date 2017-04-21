%% E12 Project

[file, Fs] = audioread('A.wav');
Fs
sound(file, Fs);

t=[1/Fs:1/Fs:length(file)/Fs];
plot(t, file);

