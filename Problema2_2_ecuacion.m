% Solución de la ecuación cuadratica por formula general
%% Datos de entrada

% Pedir al usuario los coeficientes de la ecuación
a = input('Introduzca el valor de a: ');
b = input('Introduzca el valor de b: ');
c = input('Introduzca el valor de c: ');

[x1, x2] = ecuacion_cuadratica(a, b, c); % Calcular las soluciones

fprintf('La ecuación cuadrática es: %gx^2 + %gx + %g = 0\n', a, b, c) % Imprimir la ecuación cuadrática

% Imprimir las soluciones por pantalla
if imag(x1) == 0 && imag(x2) == 0 % D>0 Soluciones reales, D=0 soluciones iguales
    fprintf('Las soluciones son reales:\n'); 
    disp(['x1 = ' num2str(x1)]);
    disp(['x2 = ' num2str(x2)]);
    
else
    fprintf('Las soluciones son imaginarias:\n'); % D<0 Soluciones imaginarias
    disp(['x1 = ' num2str(x1)]);
    disp(['x2 = ' num2str(x2)]);
end
