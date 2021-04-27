%Exercise 7.4.3

%Area of a circle by monte carlo method
clear;
N=input('Enter N: ');
insidecount=0;
for i=1:N
    coord(i,1)=2*rand(1)-1;
    coord(i,2)=2*rand(1)-1;
    if (coord(i,1)^2+coord(i,2)^2)<1
        insidecount=insidecount+1;
    end
end
mypi=4*insidecount/N