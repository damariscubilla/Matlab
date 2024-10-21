% Definir la ecuación de 2do grado, formula general

function [x1, x2] = ecuacion_cuadratica(a, b, c) % Ecuación de segundo grado del tipo ax^2 + bx + c = 0

D = b^2 - 4*a*c; % Calcular el discriminante

% Calcular las soluciones
x1 = (-b + sqrt(D)) / (2*a);
x2 = (-b - sqrt(D)) / (2*a);

end
