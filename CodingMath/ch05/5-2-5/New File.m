iterations = 10;
angleIncrement = pi/100;
lengthDecrement = 1/20;
figure(1);
clf
function drawSquares(len, angle, angInc, lengthDecrement, iterations)
  pt1 = len*[cos(angle); sin(angle)];
  rot = [cos(pi/2) -sin(pi/2); sin(pi/2) cos(pi/2)];
  pt2 = rot*pt1;
  pt3 = rot*pt2;
  pt4 = rot*pt3;
  plot([pt1(1), pt2(1), pt3(1), pt4(1), pt1(1)], [pt1(2), pt2(2), pt3(2), pt4(2), pt1(2)], 'b', 'linewidth', 1);
  axis image;
  axis([-1.1 1.1 -1.1 1.1]);
  grid on
  hold on
  pause(0.3)
  if iterations - 1 > 0
    drawSquares(len-len*lengthDecrement, angle+angInc, angInc, lengthDecrement, iterations-1);
  endif
endfunction
drawSquares(1, 0, angleIncrement, lengthDecrement, iterations)
