% Function: hipocicloide.m
% 
% Descripción:
% Esta funcion crea un vector de numeros complejos que representan 
% un hipocicloide en el plano complejo.

% Parámetros:
% r1 (float): radio 1
% r2 (float): radio 2
% do_plot (bool): true si se quiere graficar el hipociloide en en plano
%                 complejo, false de lo contario
%
% Output: 
% z (vector<complex>): vector de numeros complejos

function z = hipocicloide(r1, r2, do_plot)

    alpha = 0:0.005:1000;
    k = r1/r2;
    x = (r1 - r2)*cos(alpha) + r2*cos(alpha*(1-k));
    y = (r1 - r2)*sin(alpha) + r2*sin(alpha*(1-k));
    if (do_plot)
        %plot(x, y)
    end
    z = x + 1i*y;
end