clc; clear; close all;  % Limpia la consola y variables

fs = 1000;               % Frecuencia de muestreo
t = 0:1/fs:1-1/fs;       % Vector de tiempo
senal = sin(2*pi*5*t);         % Señal original (seno 5 Hz)
ruido = 0.5*randn(size(t));    % Ruido aleatorio
senal_ruido = senal + ruido;   % Señal con ruido

fc_lp = 10;  % Frecuencia de corte
[b_lp, a_lp] = butter(4, fc_lp/(fs/2), 'low');  
senal_lp = filtfilt(b_lp, a_lp, senal_ruido);

fc_hp = 10;  % Frecuencia de corte
[b_hp, a_hp] = butter(4, fc_hp/(fs/2), 'high');  
senal_hp = filtfilt(b_hp, a_hp, senal_ruido);

fc1 = 3; fc2 = 15;  % Rango de la banda
[b_bp, a_bp] = butter(4, [fc1 fc2]/(fs/2), 'bandpass');  
senal_bp = filtfilt(b_bp, a_bp, senal_ruido);

figure;

subplot(4,1,1)
plot(t, senal_ruido)
title('Señal con ruido')

subplot(4,1,2)
plot(t, senal_lp)
title('Filtro pasa bajos')

subplot(4,1,3)
plot(t, senal_hp)
title('Filtro pasa altos')

subplot(4,1,4)
plot(t, senal_bp)
title('Filtro pasa bandas')

figure;
freqz(b_lp, a_lp, 1024, fs); % Respuesta del pasa bajos
title('Respuesta en frecuencia - Pasa bajos')
