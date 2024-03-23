clear; clf; clc; hold on

RT = inline('[cos(t) -sin(t); sin(t) cos(t)]');

n = 8;
m = 0.7;
d = sqrt(1+m^2);

c1 = 1/d;
c2 = m/d;

alpha1 = atan(m);
alpha2 = -(pi/2-alpha1);

nEle = 2^(n+1) - 1;

M = zeros(nEle, 5);

M(1,1:5) = [0 0 0 1 0];

for i = 1:n
  M(2^i:2^(i+1)-1, 5) = i;
end

for i = 2:2:(nEle-1)
  j = i/2;
  P1 = RT(M(j,3))*(M(j,4)*[0;1]) + M(j,1:2)';
  P2 = RT(M(j,3))*(M(j,4)*[1/(1+m^2); 1+m/(1+m^2)]) + M(j,1:2)';
  theta1 = M(j,3) + alpha1;
  theta2 = M(j,3) + alpha2;
  M(i, 1:4) = [P1' theta1 M(j,4)*c1];
  M(i+1, 1:4) = [P2' theta2 M(j,4)*c2];
end

ColorM(1:n+1, 1) = linspace(1, 0, n+1)';
ColorM(1:n+1, 2) = linspace(1, 0.5, n+1)';
ColorM(1:n+1, 3) = 0.5;

for i = 1:size(M,1)
  cx=M(i,1);
  cy=M(i,2);
  theta=M(i,3);
  si=M(i,4);
  R = RT(theta);
  x = si*[0 1 1 0 0];
  y = si*[0 0 1 1 0];
  pts = R*[x;y];
  fill(cx+pts(1,:), cy+pts(2,:), ColorM(M(i,5)+1,:));
end

axis equal off;
