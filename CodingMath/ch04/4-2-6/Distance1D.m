clear;clf;hold on
n = 10000;
x = rand(1, n);
y = rand(1, n);
count1 = 0;
count2 = 0;

for i = 1:n
  if abs(x(i)-y(i)) <= 0.5
    count1 = count1+1;
    solx(count1) = x(i);
    soly(count1) = y(i);
  else
    count2 = count2+1;
    nosolx(count2) = x(i);
    nosoly(count2) = y(i);
  endif
end

count1
probability = count1/n
figure(1)
clf;hold on
plot(solx,soly, 'r.')
plot(nosolx,nosoly, 'k.')
axis image
