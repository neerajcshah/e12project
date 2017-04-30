%% E12 Project
w0 = 440;
T = (2*pi)/w0;

[file, Fs] = audioread('A.wav');
file = file(:,1);

a0 = mean(file)
an = [];
bn = [];

final_value = linspace(0,30,length(file));
%final_value = final_value .* a0;

for n = 1:100
   a(n) = 1/length(file) * trapz(file * cos(n));
   b(n) = 1/length(file) * trapz(file * sin(n));
end

for i = 1:100
   final_value = final_value + cos(i) * a(i);
   final_value = final_value + sin(i) * b(i);
end

% sound(file, Fs);
% 
t=[1/Fs:1/Fs:length(file)/Fs];

%%plot(t, final_value);

