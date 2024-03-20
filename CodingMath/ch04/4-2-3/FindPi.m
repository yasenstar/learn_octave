clear;clf;
hold on
N = 10000;
count = 0;
for i = 1:N
  x = 2*rand(1)-1;
  y = 2*rand(1)-1;
  r = sqrt(x^2+y^2);
  if r < 1
    count = count + 1;
    plot(x,y,'r*')
  else
    plot(x,y,'kx')
  endif
end
t = linspace(0, 2*pi, 100);
plot(cos(t),sin(t),'k','linewidth', 2)
Pi = 4*(count/N)
axis image
box on
