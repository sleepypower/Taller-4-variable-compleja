clear 
close all
clc

%% Crear curva en 2d

z = hipocicloide(1, 0.52, true)

% Formula Plano Complejo -> Esfera de Riemann
x1 = (2 .* real(z))./((abs(z).^2+1));
x2 = (2 .* imag(z))./((abs(z).^2 + 1));
x3 = (abs(z).^2 - 1)./(abs(z).^2 + 1);

% Plot sphere
[x, y, z] = sphere;
mesh(x,y,z, 'edgecolor', 'k')
%hidden off
hold on

% Dibujar la curva en 3d
plot3(x1, x2, x3)