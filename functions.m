function s = geoSum(r,n)
  % geoSum sums the first n terms of a
  % geometric series with common ratio r
  if r == 1
    s = n;
  else
    s = (1-r^n)/(1-r);
  endif
endfunction

ratio = 1/2;
N = 5;
aSum = geoSum(ratio, N)

