studentScores = [ 85, 88, 92;
                  88, 95, 90;
                  40, 60, 75;
                  60, 82, 82];

testAvg = mean(studentScores);
studentAvg = mean(studentScores, 2);
classAvg = mean(studentScores(:));

testMax = max(studentScores)
classMin = min(studentScores(:))
testSTD = std(studentScores, 0, 2)