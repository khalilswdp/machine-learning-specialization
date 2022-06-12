x = 0:pi/16:2*pi
y = sin(x)
plot(x,y,'m:s')
xlabel('time [s]')
ylabel('amplitude')
title('Some plot')
legend('y(t)')