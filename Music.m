notes = [2^(-9/12) 2^(-8/12) 2^(-7/12) 2^(-6/12) 2^(-5/12) 2^(-4/12) 2^(-3/12) 2^(-2/12) 2^(-1/12) 1 2^(1/12) 2^(2/12) 2^(3/12) 2^(4/12) 2^(5/12) 2^(6/12) 2^(7/12) 2^(8/12) 2^(9/12) 2^(10/12) 2^(11/12) 2^(12/12)]
C = 1; 
D = 3; 
E = 5;
F = 6;
G = 8;
A = 10; 
B = 12; 
C5 = 13; 
D5 = 15;
E5 = 17;
F5 = 18;
G5 = 20; 
A5 = 22;
song = [C5, C5, C5, C5, B, A, B, C5, D5, E5, E5, E5, E5, D5, C5, D5, E5, F5, G5, C5, A5, G5, F5, E5, D5, C5];
for i = 1:length(song)
    sound(file, Fs * notes(song(i)));
    pause(1) 
end
 