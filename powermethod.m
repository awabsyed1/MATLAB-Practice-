% script to demonstrate power method

x = rand(3,1);
A = rand(3,3);

for n=1:1e4
    x = A*x;
    x = x/norm(x);
end

disp(x)