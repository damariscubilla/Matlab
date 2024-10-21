%Este programa obtiene la retención por IRPF 
%% Lineas generales
close all
clear
clc
%% Datos de entrada
sueldo = input('Ingrese el sueldo del trabajador (€): ');% Definir sueldo del trabajador (en euros)

% Definir variables de los límites de los tramos de retención
limite1 = 12449.99;
limite2 = 20200;
limite3 = 35200;
limite4 = 60000;
limite5 = 300000;

% Definir variables de las tasas de retención correspondientes a cada tramo
tasa1 = 0.19;
tasa2 = 0.24;
tasa3 = 0.30;
tasa4 = 0.37;
tasa5 = 0.45;
tasa6 = 0.47;

% Calcular la retención correspondiente en cada tramo utilizando la estructura condicional "if-elseif-else"
if sueldo <= limite1
    retencion = sueldo * tasa1;
elseif sueldo > limite1 && sueldo <= limite2
    retencion = limite1 * tasa1 + (sueldo - limite1) * tasa2;
elseif sueldo > limite2 && sueldo <= limite3
    retencion = limite1 * tasa1 + (limite2 - limite1) * tasa2 + (sueldo - limite2) * tasa3;
elseif sueldo > limite3 && sueldo <= limite4
    retencion = limite1 * tasa1 + (limite2 - limite1) * tasa2 + (limite3 - limite2) * tasa3 + (sueldo - limite3) * tasa4;
elseif sueldo > limite4 && sueldo <= limite5
    retencion = limite1 * tasa1 + (limite2 - limite1) * tasa2 + (limite3 - limite2) * tasa3 + (limite4 - limite3) * tasa4 + (sueldo - limite4) * tasa5;
else
    retencion = limite1 * tasa1 + (limite2 - limite1) * tasa2 + (limite3 - limite2) * tasa3 + (limite4 - limite3) * tasa4 + (limite5 - limite4) * tasa5 + (sueldo - limite5) * tasa6;
end

% Mostrar la retención correspondiente al sueldo ingresado
fprintf('La retención correspondiente por IRPF del sueldo bruto de %0.2f€ es de %0.2f€.\n', sueldo, retencion);
