clear; figure(1); clf; hold on

nx = 18
ny = 25

for i = 1 : ny
    line([0, nx], [i, i])
end

for i = 1 : nx
    line([i i], [0 ny])
end

NoH = 50;

x = randi([0 nx], NoH, 1); y = randi([0 ny], NoH, 1);

plot(x, y, 'ro', 'linewidth', 2);

% Generate random lower-left corner position for lake
lake_low_x = randi([0 nx-1], 1)
lake_low_y = randi([0 ny-1], 1)
% Calculate lake width and height range
width_range = nx - lake_low_x - 1
height_range = ny - lake_low_y - 1
% Generate random lake width and height
lake_width = randi([1,width_range], 1)
lake_height = randi([1, height_range], 1)
% Plotting lake in the area, with FaceColor = Blue
rectangle("Position", [lake_low_x, lake_low_y, lake_width, lake_height], "FaceColor", [0,0,1])

for i = 0 : nx
  for j = 0 : ny
    d = 0;
    for k = 1 : NoH
      d = d + abs(x(k) - i) + abs(y(k) - j);
    end
    fire(i+1, j+1) = d;
  end
end

s = (nx + ny) * NoH;

for i = 1 : nx+1
  for j = 1 : ny+1
    if fire(i,j) < s
      s = fire(i,j);
      m = i;
      n = j;
    end
  end
end

plot(m-1, n-1, 'bs', 'linewidth', 30);

axis image

figure(2); clf; mesh(fire'); hold on

plot(m, n, 'b*', 'linewidth', 4)
axis([0 nx 0 ny 0 max(max(fire))])
