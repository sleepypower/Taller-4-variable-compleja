a = 0:1:200

x = cos(a)
y = sin(a)
z = x + 1i*y

x1 = (2 .* real(z))./((abs(z).^2+1));
x2 = (2 .* imag(z))./((abs(z).^2 + 1));
x3 = (abs(z).^2 - 1)./(abs(z).^2 + 1);

plot3(x1, x2, x3)