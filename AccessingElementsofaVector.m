data = [0.01;0.02;0.01;0.27;0.39;0.01;0.65;0.5]
ind = data > 0.1;
activity = data(ind);

ind = data <= 0.1;
data(ind) = 0;