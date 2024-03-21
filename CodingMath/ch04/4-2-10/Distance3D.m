clear;
n = 500000
count = 0;
for i = 1:n
  x1 = rand(1);
  y1 = rand(1);
  z1 = rand(1);
  x2 = rand(1);
  y2 = rand(1);
  z2 = rand(1);
  if sqrt((x1-x2)^2+(y1-y2)^2+(z1-z2)^2) <= 0.5
    count = count + 1;
  endif
end
count
probability = count / n
