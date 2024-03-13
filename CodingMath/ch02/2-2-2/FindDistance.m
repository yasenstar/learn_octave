clear; clf; hold on

nx = 18; ny = 25;

for j=0:ny
    line([0 nx], [j j])
end

for i=0:nx
    line([i i], [0 ny])
end

NoH = 30;

x = randi([0 nx], NoH, 1);
y = randi([0 ny], NoH, 1);

plot(x, y, 'b*', 'linewidth', 10);

i = 5; j = 12;

plot(i, j, 'ro', 'linewidth', 2);

axis image

d = 0;

for k=1:NoH
  d = d + abs(x(k)-i) + abs(y(k)-j);
end

d
