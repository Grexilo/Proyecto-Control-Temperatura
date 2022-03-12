clc; clear all;
pause(1)
s = serialport("COM5",115200);

a1 = zeros(1,361);
a2 = zeros(1,361);
a3 = zeros(1,361);
t = 0:0.5:180;

data = {};
tic

for k = 1:1:361
   data{1,k} = readline(s);
    temp = data{1,k};
    temp = split(temp,',');
    a1(k) = str2double(temp(1));
    a2(k) = str2double(temp(2));
    a3(k) = str2double(temp(3));
    
    subplot(3,1,1)
    plot(t,a1)
    grid
    axis([0 180 0 120])
    title('Temperatura')
    ylabel('Temp [°C]')
    xlabel("Tiempo [s]")
    subplot(3,1,2)
    plot(t,a2,'r')
    axis([0 180 -80 80])
    title('Error')
    ylabel('Error')
    xlabel("Tiempo [s]")
    grid
    subplot(3,1,3)
    plot(t,a3,'g')
    axis([0 180 -1 260])
    title('Acción de control')
    ylabel('U[n]')
    xlabel("Tiempo [s]")
    grid
    %clf
end
toc




    
    
   
