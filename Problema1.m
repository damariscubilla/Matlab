% Cubiertas
%% Lineas generales
close all
clear
clc
%% Datos de entrada

[u,v] = meshgrid(linspace(-5,5,50), linspace(-8,8,50));
x = u;
y = v;
z = 0.2*u.*sin(v); % calcular las coordenadas (x,y,z) de cada punto en la malla

subplot(1,2,1) % Primera subventana (mallada)
surf(x,y,z) % graficar la figura en forma mallada
xlabel('u') % nombre del eje x
ylabel('v') % nombre del eje y
zlabel('z') % nombre del eje z
title('Figura 1. Gráfica mallada') % título de la figura 1

subplot(1,2,2) % Segunda subventana (curvas de nivel)
contour(x,y,z,[-0.8, -0.4, 0, 0.5, 0.9])
xlabel('u') % nombre del eje x
ylabel('v') % nombre del eje y
title('Figura 2. Curvas de nivel') % título de la figura 2