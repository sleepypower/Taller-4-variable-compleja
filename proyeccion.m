function [x1, x2, x3] = proyeccion(z)
    
    % Formula Plano Complejo -> Esfera de Riemann
    x1 = (2 .* real(z))./((abs(z).^2+1));
    x2 = (2 .* imag(z))./((abs(z).^2 + 1));
    x3 = (abs(z).^2 - 1)./(abs(z).^2 + 1);
    
end