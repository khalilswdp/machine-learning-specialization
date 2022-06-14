v = [8,3,4,1,5,9,6,7,2,2,1,5]
A = reshape(v, 3, 4) # (first column first - all rows, second column later and so on)
B = reshape(A, 4, 3)
C = reshape(v, 2, []) # automatically

newVec = C(:)