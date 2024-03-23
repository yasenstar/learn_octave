clear; clf; hold on;
RT = inline('[cos(t) -sin(t); sin(t) cos(t)]');
Box = [0 1 1 0 0; 0 0 1 1 0];
fill(Box(1,:), Box(2,:), 'g');
RTBox = RT(pi/3)*Box;
fill(RTBox(1,:), RTBox(2,:), 'b');
