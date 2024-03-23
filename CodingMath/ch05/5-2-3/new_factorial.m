function x = new_factorial(n)
  n
  if n <= 1
    x = 1;
  else
    x = n * new_factorial(n-1)
  endif
end
