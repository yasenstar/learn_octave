function Triangles()
  iterations = 200;
  angleIncrement = pi/100;
  lengthDecrement = 1/100;
  figure(1);
  clf
  function drawTriangles(len, angle, angInc, lengthDecrement, iterations)
    pt1 = len*[cos(angle); sin(angle)];
    rot = [cos(2*pi/3) -sin(2*pi/3); sin(2*pi/3) cos(2*pi/3)];
    pt2 = rot*pt1;
    pt3 = rot*pt2;
    plot([pt1(1), pt2(1), pt3(1), pt1(1)], [pt1(2), pt2(2), pt3(2), pt1(2)], 'g', 'linewidth', 1);
    axis image;
    axis([-0.9 1.1 -1 1]);
    grid on
    hold on
    pause(0.05)
    if iterations - 1 > 0
      drawTriangles(len-len*lengthDecrement, angle+angInc, angInc, lengthDecrement, iterations-1);
    endif
  endfunction
  drawTriangles(1, 0, angleIncrement, lengthDecrement, iterations)
end
