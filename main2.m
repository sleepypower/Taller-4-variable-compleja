
tiledlayout(1,2) 
% Grafica del plano complejo
nexttile
z = hipocicloide(2, 0.52, true);
[m,n] = ginput;
hold on
%scatter(m,n,'r') grafica los puntos clicqueados
plot(m,n,'r')
title('Plano complejo')

% Grafica de esfera de Riemann
nexttile
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
hold on


x = [];
y = [];

for i=1:length(m)-1
    st = 1;
    if ((m(i)-m(i+1))>0)
        st = -1;
    end
    st2 = 1;
    if ((n(i)-n(i+1))>0)
        st2 = -1;
    end
    x = [x m(i):st*(abs(m(i)-m(i+1))/100):m(i+1)];
    y = [y n(i):st2*(abs(n(i)-n(i+1))/100):n(i+1)];
end

z2 = x + 1i*y;
x11 = (2 .* real(z2))./((abs(z2).^2+1));
x22 = (2 .* imag(z2))./((abs(z2).^2 + 1));
x33 = (abs(z2).^2 - 1)./(abs(z2).^2 + 1);
plot3(x11, x22, x33,'r')
hold on
title('Esfera de Riemann')
        