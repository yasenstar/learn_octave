clear;clf;hold on
n = 50

for i = 1:n
  x1 = rand(1);
  y1 = rand(1);
  z1 = rand(1);
  x2 = rand(1);
  y2 = rand(1);
  z2 = rand(1);
  if sqrt((x1-x2)^2+(y1-y2)^2+(z1-z2)^2) <= 0.5
    plot3([x1,x2],[y1,y2], [z1,z2], 'ro-', 'linewidth', 2)
  else
    plot3([x1,x2],[y1,y2], [z1,z2], 'bo-', 'linewidth', 2)
  endif
end
axis square
view(60,30)

