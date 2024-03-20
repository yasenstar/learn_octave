clear;clf;hold on
n = 1000
xn = (rand(n,1)-0.5)*4 + 0.5;
yn = -3.5*rand(n,1) + 1.5;

% draw circle
theta = linspace(0, 2*pi, 100);
x = cos(theta);
y = sin(theta);
plot(x,y,'k','linewidth',2)

% define rectangle
Uy = 0.6;Dy=-1.5;Lx=0.5;Rx=2;

% in circle and rectangle
count1=0;
% in circle, not in rectangle
count2=0;
% not in circle, but in rectangle
count3=0;
% not in circle, and not in rectangle
count4=0;

for i = 1:n
  if sqrt(xn(i)^2 + yn(i)^2) <= 1
    if xn(i)>=Lx && xn(i)<=Rx && yn(i)<=Uy && yn(i)>=Dy
      count1 = count1+1;
      case1x(count1) = xn(i);
      case1y(count1) = yn(i);
    else
      count2 = count2+1;
      case2x(count2) = xn(i);
      case2y(count2) = yn(i);
    endif
  else
    if xn(i)>=Lx && xn(i)<=Rx && yn(i)<=Uy && yn(i)>=Dy
      count3 = count3+1;
      case3x(count3) = xn(i);
      case3y(count3) = yn(i);
    else
      count4 = count4+1;
      case4x(count4) = xn(i);
      case4y(count4) = yn(i);
    endif
  endif
end

plot(case1x, case1y,'go')
plot(case2x, case2y,'bo')
plot(case3x, case3y,'yo')
plot(case4x, case4y,'ko')

axis image; grid on

rate = count1/(count1+count3);
S = (Rx-Lx)*(Uy-Dy);
Area = S * rate

p = 0.3;
q = 0.6+sqrt(0.75);
theta = 2*asin(0.5*sqrt(p^2+q^2))
pq = p*q
inside = (p^2+q^2)*(1-0.25*sqrt(p^2+q^2))
middle = pq+theta-sqrt(inside)
exact = 0.5*(middle)
