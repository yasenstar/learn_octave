function FractalTree()
  totalIter = 10;
  angle = pi/6;
  len1 = 3 * 1.2^totalIter;
  w = totalIter;
  figure(1);
  clf
  plot([0,0], [-len1,0], 'LineWidth', w, 'Color', [0 0 0])
  hold on
  function drawBranches(initAngle, pt, Iter, angle, totalIter)
    len = 1.2^Iter;
    x1 = pt(1); y1 = pt(2);
    ang1 = initAngle + angle;
    ang2 = initAngle - angle;
    x2 = len*cos(ang1) + x1;
    y2 = len*sin(ang1) + y1;
    x3 = len*cos(ang2) + x1;
    y3 = len*sin(ang2) + y1;
    w = Iter;
    c2 = [1-Iter/totalIter 0 1-Iter/totalIter];
    p1 = plot([x1,x2], [y1,y2], 'LineWidth', w, 'Color', c2);
    p2 = plot([x1,x3], [y1,y3], 'LineWidth', w, 'Color', c2);
    pause(0.01)
    if Iter - 1 > 0
      drawBranches(ang1, [x2,y2], Iter-1, angle, totalIter);
      drawBranches(ang2, [x3,y3], Iter-1, angle, totalIter);
    endif
  endfunction
  drawBranches(pi/2, [0,0], totalIter-1, angle, totalIter);
  axis image
  axis on
  grid on
end
