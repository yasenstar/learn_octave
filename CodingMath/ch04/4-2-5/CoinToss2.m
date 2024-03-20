clear;
ns = 10000;
count = 0;
flag = 2;
for n = 1:ns
  position = 0;
  for i = 1:8
    coin = rand(1);
    if coin<0.5
      position = position + 1;
    else
      position = position - 1;
    endif
  endfor
  switch flag
    case 1
      if position == 0
        count = count + 1;
      endif
    case 2
      if position == -4
        count = count + 1;
      endif
    case 3
      if abs(position)<=2
        count = count + 1;
      endif
  endswitch
end

probability = count / ns
