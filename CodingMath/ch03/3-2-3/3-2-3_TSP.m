clear; clf; hold on

NoH = 50
x = 10 * rand(NoH, 1)
y = 10 * rand(NoH, 1)
plot(x, y, 'ro', 'linewidth', 5)

flag = ones(NoH, 1);
xx(1) = x(1);
yy(1) = y(1);

flag(1) = -1;

ordering(1) = 1;

for k = 1 : NoH-1
  s = 10000;
  for i = 2 : NoH
    d = sqrt((x(i)-xx(k))^2 + (y(i)-yy(k))^2);
    if d < s && flag(i) > 0
      s = d;
      j = i;
    endif
  endfor
  ordering(k+1) = j;
  xx(k+1) = x(j);
  yy(k+1) = y(j);
  flag(j) = -1;
end

##xx(NoH+1) = x(1)
##yy(NoH+1) = y(1)

plot(xx, yy, 'linewidth', 3)

axis image

box on

ss = 0;

for i = 1 : NoH-1
  ss = ss + sqrt((xx(i+1)-xx(i))^2 + (yy(i+1)-yy(i))^2);
end

ss = ss + sqrt((xx(i+1)-xx(i))^2 + (yy(i+1)-yy(i))^2)
