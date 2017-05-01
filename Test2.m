a0 = mean(file);
t = linspace(0,length(file),length(file));
result = zeros(1, length(file));

w0 = [3.48480816058418e-05*2];
result = result+a0;

result = zeros(1, length(file));


result = result+a0;

for i = 1:10000
   an = a(i) * cos(i*w0*t);
   
   bn = b(i) * sin(i*w0*t);
   
   result = result + an + bn;
   
   
end

sound(result,Fs)