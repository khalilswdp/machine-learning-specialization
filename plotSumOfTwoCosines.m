t=linspace(0,pi/2,1000);
f1=12;
f2=10;
y=cos(2*pi*f1*t)+cos(2*pi*f2*t);
envolope = [2*cos(pi*(f1-f2)*t); 2*cos(pi*(f1-f2)*t-pi)];

r = 0.25*randn(1,1000);
y=y+r

figure
hold on
plot(t,y)

plot(t,envolope)
axis tight