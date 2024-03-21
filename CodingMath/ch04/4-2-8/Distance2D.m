clear;clf;hold on
n = 100
count = 0;
for i = 1:n
  x1 = rand(1);
  y1 = rand(1);
  x2 = rand(1);
  y2 = rand(1);
  if sqrt((x1-x2)^2+(y1-y2)^2) <= 0.5
    % plot([x1,x2],[y1,y2], 'ro-', 'linewidth', 2)
    count = count + 1;
  endif
end
axis square
count
probability = count/n
