clear;
n = 6000;
No1=0;No2=0;No3=0;No4=0;No5=0;No6=0;

for i = 1:n
  a = 6*rand(1);
  if a < 1
    No1 = No1 + 1;
  elseif a < 2
    No2 = No2 + 1;
  elseif a < 3
    No3 = No3 + 1;
  elseif a < 4
    No4 = No4 + 1;
  elseif a < 5
    No5 = No5 + 1;
  else
    No6 = No6 + 1;
  endif
end
[No1 No2 No3 No4 No5 No6]
[No1 No2 No3 No4 No5 No6]/n
