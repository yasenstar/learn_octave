clear;
clf;

nx = 18;
ny = 25;

for i = 1 : ny
  line([0, nx], [i, i])
end

axis image
