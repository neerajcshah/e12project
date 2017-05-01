[file, Fs] = audioread('A.wav');
file = file(:,1);
file = file.';

T = length(file);
w0 = 2*pi/T;



a0 = mean(file);
t = linspace(0,length(file),length(file));
result = zeros(1, length(file));


result = result+a0;

%%
a = [];
b = [];


for n = 1:10000
   a(n) = 2/T * trapz(file.*cos(n*w0.*t));
   b(n) = 2/T * trapz(file.*sin(n*w0.*t));
end

for i = 1:10000
   an = a(i) * cos(i*w0*t);
   
   bn = b(i) * sin(i*w0*t);
   
   result = result + an + bn;
   
   
end
figure
plot(t, result)
figure
plot(t,file)
sound(result,Fs);