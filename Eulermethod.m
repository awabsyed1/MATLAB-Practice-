% simple example of Euler method
clear
I=0; % running total for integral
h = 0.001; % width of rect
% loop over all values of x
for x= -10:h:10
    % calculate f(x)
    f_x = x^3 - 20*(x^2) + x -1;
    I = I + h*f_x;
    % add f(x) * dx to integral
end
disp('answer is...')
disp( [ 'answer is: ' num2str(I) ] )

% same using arrays
x = [-10:h:10];
areas = h.*(x.^3 - 20*(x.^2) + x - 1);
I_array = sum(areas);
disp(I_array);