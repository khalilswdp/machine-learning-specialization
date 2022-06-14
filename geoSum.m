# works in the command, but not the file
ratio = 1/2;
N = 5;
aSum = geoSum(ratio, N)

function s = geoSum (r,n)
  % geoSum sums the first n terms of a
  % geometric series with common ratio r
  if r == 1
    s = n;
  else
    s = (1-r^n)/(1-r);
  end
end