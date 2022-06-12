months = 1:1:12
avgTempTunis = [5.24,5.2,6.92,9.31,12.26,14.80,16.51,16.93,14.91,12.27,8.73,5.91]
avgTempRio = [25.73,25.98,25.68,24.56,22.59,21.71,21.41,21.69,22.35,23.27,23.77,25.05]
plot(months, avgTempTunis, 'r:o')
hold on
plot(months, avgTempRio, 'b-*')

xlabel('Months')
ylabel('Temperature')
title('Average Temperature in Tunis/Rio')