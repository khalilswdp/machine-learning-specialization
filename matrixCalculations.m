price = [1.25, 2.1;
          4.6, 4.15;
          11.95, 10.8]
quantity = [5, 5;
             3, 3;
             2, 2]
shipCost = [8, 2.99;
            6, 2.99;
            6, 5.99]
taxRate = 1.05

totalCost = (price .* quantity) * taxRate + shipCost