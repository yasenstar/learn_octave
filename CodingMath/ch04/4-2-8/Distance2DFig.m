clear;clf;hold on
n = 30

for i = 1:n
  x1 = rand(1);
  y1 = rand(1);
  x2 = rand(1);
  y2 = rand(1);
  if sqrt((x1-x2)^2+(y1-y2)^2) <= 0.5
    plot([x1,x2],[y1,y2], 'ro-', 'linewidth', 2)
  else
    plot([x1,x2],[y1,y2], 'bo-', 'linewidth', 2)
  endif
end

axis square

