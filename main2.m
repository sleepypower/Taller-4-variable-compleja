clear 
close all
clc

%% Input del plano complejo
tiledlayout(1,2) 

% Grafica del plano complejo
nexttile
%%[m,n] = ginput;
z = hipocicloide(0.5, 0.1, true);
%z = [z hipocicloide(0.5, 0.1, true)];
plot(real(z), imag(z))

hold on

xlim([-1 1])
ylim([-1 1])

%%plot(m,n,'r')

title('Plano complejo')

% Grafica de esfera de Riemann
nexttile

%% Plot sphere
[x, y, z] = sphere;
%mesh(x,y,z, 'edgecolor', 'k')
esfera = surf(x, y, z, 'EdgeColor','None', 'FaceAlpha', 0.25, 'FaceColor', 'Flat');


%hidden off
hold on

%% Proyectar a la esfera
[x11, x22, x33] = proyeccion(z);

plot3(x11, x22, x33,'r')
hold on
title('Esfera de Riemann')
        