hours = 3
if hours <= 1
   fee = 0;
elseif hours > 1 & hours < 7
   fee = 5*(hours-1);
else
   fee = 35;
endif
fee