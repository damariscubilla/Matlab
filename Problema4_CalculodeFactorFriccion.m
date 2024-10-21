%Este programa Cálcula el factor de fricción de una tubería
%% Lineas generales
close all
clear
clc
%% Datos de entrada
v = 10^-6; % Viscosidad cinemática del agua en m^2/s

% Solicitar datos de entrada al usuario
k_mm = input('Introduce la rugosidad absoluta en milímetros: '); 
D = input('Introduce el diámetro de la tubería en metros: '); 
Q = input('Introduce el caudal en m^3/s: '); 

k = k_mm * 1e-3; % Conversión de mm a m

% Calcula la velocidad V y el número de Reynolds Re
A = pi*(D/2)^2; % Sección transversal de la tubería
V = Q / A; % Velocidad del fluido
Re = V*D/v; % Número de Reynolds

% Estimación inicial para el factor de fricción
f = 0.0195; % Valor recomendado para Re = inf

% Iteración con el método de Newton
for i = 1:100
    f_old = f;
    f = f - (1/sqrt(f) + 2*log10(k/(3.7*D) + 2.51/(Re*sqrt(f)))) / (-0.5/f^(1.5) - 2.51/(Re*f^(1.5))*(1/(k/(3.7*D) + 2.51/(Re*sqrt(f)))));
    if abs(f - f_old) < 1e-6
        break;
    end
end

% Mostrar el resultado
fprintf('El factor de fricción es %f\n', f);
