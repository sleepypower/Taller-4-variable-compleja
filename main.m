clear 
close all
clc

%% Crear curva en 2d
%t = -100:1:1000;
%x = 1.5*cosd(t)-cosd(30*t);
%y = 1.5*sind(t)-sind(30*t);

%% Prueba 1
%r1 = 5;
%r2 = 2;
%t = 0:pi/20:2 * pi;
%x = r1 * cos(t);
%y = r1 * sin(t);

%for i = 1 : length(t) + 1
%    x1 = x(i) + r2 * cos(t);
%    y1 = y(i) + r2 * cos(t);
%    plot(x1, y1)
%    hold on
%end

%% Prueba 2
r = 10;%Radio

theta = 0:pi/20:2*pi; 

x = r*cos(theta);
y = r*sin(theta);
count=0;

xs=[];
ys=[];

for i = 1:length(theta)-1    
    if mod(i,4)==1
        x1 = x(i) + 5*cos(theta);
        y1 = y(i) + 5*sin(theta);
        %plot(x1,y1)
        %hold on
        xs = [xs, x1];
        ys = [ys, y1];

    end
end

for k = 1:4
    r = 2.5 - count;%Radio

    theta = 0:pi/20:2*pi; 

    x = r*cos(theta);
    y = r*sin(theta);

    %xs=[];
    %ys=[];

    for i = 1:length(theta)-1    
        if mod(i,4)==1
            x1 = x(i) + 0.25*cos(theta);
            y1 = y(i) + 0.25*sin(theta);
            %plot(x1,y1)
            %hold on
            xs = [xs, x1];
            ys = [ys, y1];

        end
    end
    count = count+0.5;
end



z = xs + 1i*ys;
%plot(xs, ys)
x = xs
y = ys


%% Pasar a complejo
%z = x + 1i*y;

% Formula Plano Complejo -> Esfera de Riemann
x1 = (2 .* x)./((abs(z).^2+1));
x2 = (2 .* y)./((abs(z).^2 + 1));
x3 = (abs(z).^2 - 1)./(abs(z).^2 + 1);

% Plot sphere
[x, y, z] = sphere;
mesh(x,y,z, 'edgecolor', 'k')
hidden off
hold on

% Dibujar la curva en 3d
plot3(x1, x2, x3)