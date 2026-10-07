clear all
close all
clc

figure(1)
G1 = tf([100 0],[1 100]);
[mag,phase,w]=bode(G1);
magdb = 20*log10(squeeze(mag));
semilogx(w,magdb)
grid on
xlabel('Frequency (rad/s)')
ylabel('Magnitude (dB)')

[ii,jj] = size(w)
bandwidth = (max(magdb)-3)*ones(ii,jj);
hold on
semilogx(w,bandwidth)
