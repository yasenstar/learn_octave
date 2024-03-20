clear; figure(1); clf
n = 50;
dims = 3;
xy = 10*rand(n,dims);
numIter = 10000;

for i=1:n
  for j=1:n
    dmat(i,j)=sqrt(sum((xy(i,:)-xy(j,:)).^2));
  endfor
end

routes(1,:) = [1:n];

for k = 2:4
  routes(k,:) = randperm(n);
end

globalMin = Inf;

for iter = 1:numIter
  for p = 1:4
    d = dmat(routes(p,n),routes(p,1));
    for k = 2:n
      d = d + dmat(routes(p,k-1), routes(p,k));
    endfor
    totalDist(p) = d;
  endfor
  [minDist,idx] = min(totalDist);
  distHistory(iter) = minDist;
  if minDist < globalMin && mod(iter, 50) == 0
    globalMin = minDist;
    rte = routes(idx,:);
    rte = rte([1:n 1]);
    xx = xy(rte,1);
    yy = xy(rte,2);
    if dims < 3
      plot(xx,yy,'ro', 'linewidth', 1.5);
      hold on;
      plot(xx,yy,'b-', 'linewidth', 1.5);
      hold off;
    else zz = xy(rte,3);
      plot3(xx,yy,zz,'ro', 'linewidth', 1.5);
      hold on;
      plot3(xx,yy,zz,'b-', 'linewidth', 1.5);
      hold off;
      box on
    endif
    title(sprintf('Total Distance = %1.4f, Iteration = %d', minDist, iter));
    axis square
    pause(0.2)
  endif
  [ignore, idx] = min(totalDist);
  bestOf4Route = routes(idx, :);
  routeInsertionPoints = sort(ceil(n*rand(1,2)));
  I = routeInsertionPoints(1);
  J = routeInsertionPoints(2);
  for k = 1:4
    routes(k,:) = bestOf4Route;
    switch k
      case 2
        routes(k, I:J) = routes(k,J:-1:I);
      case 3
        routes(k, [I J]) = routes(k,[J I]);
      case 4
        routes(k, I:J) = routes(k,[I+1:J I]);
    endswitch
  endfor
end

figure(2);
clf;
plot(distHistory, 'o-')
