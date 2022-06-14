am = [48, 41, 43, 42, 52;
56, 42, 49, 45, 53;
38, 33, 31, 36, 37;
27, 21, 19, 25, 31;
17, 22, 25, 22, 33;
20, 28, 24, 27, 38]

# returns the largest dimension of a matrix - if a vector or column, then its length( the larger dimension)
n = length(am)
# That's why we use this function for matrices mostly
[nrows, ncols] = size(am)

pm = [18, 32, 26, 28, 46;
25, 42, 35, 30, 52;
43, 44, 37, 52, 54;
49, 38, 59, 54, 55;
55, 48, 61, 69, 62;
48, 34, 56, 42, 56];

# vertical concatenation
workWk = [am; pm]

wkEnd = [34, 37;
36, 28;
22, 34;
36, 22;
31, 27;
21, 36;
25, 34;
29, 37;
37, 31;
37, 20;
22, 35;
37, 36]

# horizontal concatenation
week = [workWk, wkEnd]

plot(mean(week))