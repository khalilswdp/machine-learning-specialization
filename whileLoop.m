r = 0.02;
balance = 20000;
count = 0;

while balance < 25000
  balance = (1+r)*balance;
  count++;
end

count