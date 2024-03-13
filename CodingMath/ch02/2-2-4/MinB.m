clear; clf;

nx = 10;
ny = 5;

B = randi([1 1000], nx, ny)
mesh(B'); hold on
s = 1000;

for i = 1 : nx
    for j = 1 : ny
        if B(i,j) < s
            s = B(i,j);
            min_i = i;
            min_j = j;
        end
    end
end

[s min_i min_j]

plot(min_i, min_j, 'bo', 'linewidth', 5)
