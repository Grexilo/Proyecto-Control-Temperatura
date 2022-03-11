clc; clear all;

%Tiempo de espera conectar el arduino 
%El codigo en arduino no se ejecuta hasta leer el puerto serial
disp("ya")
pause(3)

s = serialport("COM5",115200);
disp(s)

data = [];

%Estamos muestreando a 2 muestas por segundo, por pruebas observamos que la
%bombilla tarda 10 minutos en llegar a una temperatura estable, por
%ende, 10min* 60s * 2 muestras=1200muestras
tic
for k = 1:1:1200 %cantidad total de muestras
    
    data(k) = readline(s);
    disp(data)
    
end
toc
%%

step = ones(1,length(data));
step(1:20) = 0;

t = 0:0.5:599.5;

subplot(3,1,1)
plot(t,step)
ylim([-0.2  1.2])
title("Entrada Escalon")
xlabel("t (Segundos) ")
grid on

subplot(3,1,2)
plot(t,data)
title("Tempetura Bombillo")
xlabel("t (segundos)")
ylabel(" Grados (°C)")
ylim([min(data)-5 max(data)+5])
grid on

subplot(3,1,3)
dataFilter = movmean(data,10);
plot(t,dataFilter)
title("Temperatura Bombillo - Promedio movil de 10 muestras")
xlabel("t (segundos)")
ylabel(" Grados (°C)")
ylim([min(data)-5 max(data)+5])
grid on





