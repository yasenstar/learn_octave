function Hexas()
  iterations = 200;
  angleIncrement = pi/100;
  lengthDecrement = 1/50;
  figure(1);
  clf
  function drawHexas(len, angle, angInc, lengthDecrement, iterations)
    pt1 = len*[cos(angle); sin(angle)]
    rot = [cos(pi/3) -sin(pi/3); sin(pi/3) cos(pi/3)];
    pt2 = rot*pt1;
    pt3 = rot*pt2;
    pt4 = rot*pt3;
    pt5 = rot*pt4;
    pt6 = rot*pt5;
    plot([pt1(1), pt2(1), pt3(1), pt4(1), pt5(1), pt6(1), pt1(1)], ...
    [pt1(2), pt2(2), pt3(2), pt4(2), pt5(2), pt6(2), pt1(2)], 'r', 'linewidth', 1);
    axis image;
    axis([-1.1 1.1 -1. 1.]);
    grid on
    hold on
    pause(0.01)
    if iterations - 1 > 0
      drawHexas(len-len*lengthDecrement, angle+angInc, angInc, lengthDecrement, iterations-1);
    endif
  endfunction
  drawHexas(1, 0, angleIncrement, lengthDecrement, iterations)
end
