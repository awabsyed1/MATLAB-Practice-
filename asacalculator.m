%1.2.1
3+4+5
(3+4)+5
%1.2.2
x=11;
y=-3;
z=3+x+y^2
%% 
 %1.2.3
x=0.4 
y=log(x^2/(1+x^2))
%%
    %1.2.4
x=0.4;
y=0.1;
y=0.2;
y=0.3;
z=log(x^2/(1+x^2+y))
%%
    %1.4.1
ezplot('sinh(x)')
ezplot('2+((exp(x)-exp(-x))/2)')
    %1.4.2
ezsurf('sin(3+x)+cos(3+y)')
    %1.4.3
ezmesh('5+y+2+x');
ezmesh('4+y+x^2');
subplot(1,2,1),ezmesh('5*y+2*x') %plot together 
subplot(1,2,2),ezmesh('4*y+x^2')
    %1.4.4
ezplot('cosh(x)')
hold on 
ezplot('(0.5+(exp(x)+exp(-x))/2)')
title('1.4.4')
legend('cosh','0.5')
hold off
    %%
    %1.5
% Replaced all "*" with "+"
%%
%1.6.1
var = 3.14
varCopy = var
var = var*2
%%
%1.6.2
first = 1.23 
second=2.34 
[first, second]=deal(second, first)
a=1
b=2
[a, b]=deal(b,a)
%%
%2.1.1
firstArray(1)=11;
firstArray(2)=12;
firstArray(3)=13;
firstArray(4)=14;
firstArray(5)=15;
disp(firstArray)
firstArray(2) + firstArray(4)
2*firstArray(3)
[firstArray(1),firstArray(5)]=deal(firstArray(5),firstArray(1))
 copyArray=firstArray(1,:)
 secondArray=[21 22 23 24 25 26]
 %%
 %2.2
 thirdArray=[11 12 13;21 22 23;31 32 33]
 disp(thirdArray(1,3))
 size(thirdArray)
 [NumberofRows,NumberofColumns]=size(thirdArray)
 save array.mat
 
 %%
 %2.2.2
 x=[0 1 2 3 4 5 6]
 y1=[0 1 2 3 4 5 6]
 y2=[0 1 4 9 16 25 36]
 y3=[0 1 8 27 64 125 216]
 plot(x,y1,'b--')
 hold on 
 plot (x,y2,'g-')
 plot(x,y3,'r:')
 hold off
plot(y2,x)
hold on
plot(y3,y2)
hold off
%%
%2.2.4
firstName=['Syed','Tom','Freddie','Joe'];
secondName=['Mark','Second','Acer','Joe'];
AgeInYears=uint8([21 22 55 77]);    %Integer Array
HeightInMeters=[1.71 1.62 1.82 1.20];
averageAge=[sum(AgeInYears)/length(AgeInYears)]         %Average age 
averageHeight=[sum(HeightInMeters)/length(HeightInMeters)]  %Average height 
ageWithName = AgeInYears(2)+firstName(2)
%%
%3.1
disp('Hello world!');
%3.1.2 Throwing 2 dice 
disp('Throwing 2 dice')
dice1=[1 2 3 4 5 6];
dice2=[1 2 3 4 5 6];
score1=randperm(length(dice1),1);    %Generate random number from dice1 array
score2=randperm(length(dice2),1);    %Generate random number from dice2 array 
disp(['First Throw = ',num2str(score1)])
disp(['Second Throw = ',num2str(score2)])                %display each score 
disp(['Sum = ',num2str(score1 + score2)])           % sum of both scores 
%%
%3.1.2 Thwoing 2 dice 
disp(['A simulation to sum two throws of a 6 sided die...']);
score1=ceil(6*rand(1));  %die 1
disp(['First throw = ',num2str(score1)]);   %converts numertic/integer into character array 
score2=ceil(6*rand(1));  %die 2
disp(['Second throw = ',num2str(score2)]);
Total=score1+score2;     %total score
disp(['Total = ',num2str(Total)]);
%%
%3.1.3 Hydrostatics: Draught of a floating cuboid 
disp('Hydrostatics:Draught of a floating cuboid');
L = input('The Length of the Cuboid = ');
w = input('The width of the Cuboid = ');
h = input('The height of the Cuboid = ');
Pc = input('The Density of the Material');  %Density of the Cuboid 
Pf = input('The Density of the Surrounding Fluid'); %Density of the Fluid
%Calculations
Volume = l*w*h;     
Mass = volume * Pc;
Drought = h*(Pc/Pf);
disp(['Volume = ',num2str,'cubicmeters']);
disp(['Mass = ',num2str,'kg']);
disp(['Draught = ',num2str, 'metres']);
if Pc > Pf
    disp('The cuboid will sink');
else 
    disp('Calculations completed');
end
%%
% 3.1.4. Throwing two dice, revisited 
disp('Throwing 2 dice, score doubled if with same score')
dice1=[1 2 3 4 5 6];
dice2=[1 2 3 4 5 6];
score1=randperm(length(dice1),1);    %Generate random number from dice1 array
score2=randperm(length(dice2),1);    %Generate random number from dice2 array 
disp(['First Dice = ',num2str(score1)]);
disp(['Second Dice = ',num2str(score2)]);                %display each score 
if score1 == score2 
    scoreDoubled = 2*(score1+score2);            %scoredoubled 
    disp(['Doubled Score',num2str(scoreDoubled)]);
else 
    disp(['Sum = ',num2str(score1 + score2)])           % sum of both scores 
end    
%%
%4.1.1. Draught of a floating cubiod revisited 
disp('Hydrostatics:Draught of a floating cuboid');
L = input('The Length of the Cuboid = ');
w = input('The width of the Cuboid = ');
h = input('The height of the Cuboid = ');
Pc = input('The Density of the Material');  %Density of the Cuboid 
Pf = input('The Density of the Surrounding Fluid'); %Density of the Fluid
angleL = input('The angle of length axis to the horizon');
angleW = input('The angle of width axis to the horizon');
%Calculations
Volume = l*w*h;     
Mass = volume * Pc;
Drought = h*(Pc/Pf);
disp(['Volume = ',num2str,'cubicmeters']);
disp(['Mass = ',num2str,'kg']);
disp(['Draught = ',num2str, 'metres']);
if Pc > Pf
    disp('The cuboid will sink');
else 
end 
% check and warn about tilt
if (anglel~=0)||(anglew~=0)
    disp('Beware - board tilts !');
end
%%
%4.1.2.
disp('Please use r for rock, p for paper and s for scissors');
UserInput = input('r,p,s');  
if UserInput == 'r'|'p' | 's' 
    randomResult = ceil(3*rand(1));  %program generated output
    if randomResult == 1
        disp('Computer Chose Rock');
    elseif randomResult == 2
        disp('Computer Chose Paper');
    else 
        disp('Computer Chose Scissors');
    end
    if UserInput == 'r' 
        if randomResult ==1 % COmputer chose Rock 
            disp('Its a Draw')
        elseif randomResult ==2 %Computer chose Paper 
            disp('You lose')
        else 
            disp('you win')
        end
    elseif UserInput == 'p'
        if  randomResult ==1 % COmputer chose Rock 
            disp('You Win')
        elseif randomResult ==2 %Computer chose Paper 
            disp('Its a Draw')
        else 
            disp('you Lose')
        end
    else    %User chose 's'
         if randomResult ==1 % COmputer chose Rock 
            disp('You Lose')
        elseif randomResult ==2 %Computer chose Paper 
            disp('You Win')
        else 
            disp('Its a Draw')
         end       
    end 
else
    disp('Invalid Input')
end
%%
%4.1.2 (Cheat)
disp('Please use r(1) for rock, p(2) for paper and s(3) for scissors');
UserInput = input('r,p,s');  
if UserInput == 'r' || UserInput =='p' ||UserInput == 's' 
    randomResult = ceil(3*rand(1));  %program generated output
    if randomResult == 1
        disp('Computer Chose Rock');
    elseif randomResult == 2
        disp('Computer Chose Paper');
    else 
        disp('Computer Chose Scissors');
    end
    
    if UserInput == 'r' 
        if randomResult ==1 % COmputer chose Rock 
            disp('Its a Draw')
        elseif randomResult ==2 %Computer chose Paper 
            disp('You lose')
        else 
            disp('you win')
        end
    elseif UserInput == 'p'
        if  randomResult ==1 % COmputer chose Rock 
            disp('You Win')
        elseif randomResult ==2 %Computer chose Paper 
            disp('Its a Draw')
        else 
            disp('you Lose')
        end
    else                     %User chose 's'
        y=rand;
        if y<0.75 || randomResult ==1   %Computer Cheats
            disp('Computer chose Rock, You Lose')
        elseif randomResult ==2 %Computer chose Paper 
            disp('You Win')
        else 
            disp('Its a Draw')
         end       
    end 
else
    disp('Invalid Input')
end
%%
%4.2.1 
for varCounter = 0:1:9
    disp('Hello world!');
end
%4.2.2 Counting 
startValue = input('Please enter the start value :');
stopValue = input('Please enter the stop value :');
for i=startValue:stopValue
    disp(i)
end
%%
%4.2.3. Mathematical Functions 
for i=1:10;
    x(i) = i;
    y(i) = i^2;
end
plot(x,y);
%% 4.3.1
% Add all the natural numbers below one thousand that are multiples of 3 or 5.
a=[1:1000-1]; 
total=sum(a(mod(a,3)==0|mod(a,5)==0)) %if divided by 3 or 5 =1
% sum(a(~mod(a,3) | ~mod(a,5))) if divided by 3, first section become 1
%if one of the condition is true, get 1 
%%
%4.3.1.
a= 1:999;
b=a(5:5:999);
%c=a(3:3:999);
c=b(mod(b,3)==0)    %logical array with element of b divisal by 3
d=sum(c);     %==0, divided by 3 = 1, otherwise 0
%%
%5.1.1 Further Loops 
n = input('inputn:');
factorialn = 1; %starts the factorial
i=1;
while i<=n
    factorialn=factorialn*i;
    i=i+1;
end
disp(['factorial ',num2str(n),' = ',num2str(factorialn)]);
%%
%5.1.1 Further Loops with for 
n = input('inputn: ');
factorialn = 1; %stars the factorial 
i = 1;      %probably because the result is saved & multiplied 
for i = 1:n
    factorialn=factorialn*n;
    n = n-1;
end
disp(['factorial of ',num2str(i),'=',num2str(factorialn)]);
%slide 71 
max=input('max')
i=1;
while (i^2 < max)
    disp([i i^2]);
    i=i+1;
end
%%
%5.1.2
integern = input('nth term '); %enter the value 
b = 0; % prime number 
for i = 2:integern-1   %-1 so that the integer dont divide by itself
    if  mod(integern,i)==0
        b=1;        
    end 
end
if b ==0
    disp([num2str(integern),'is a prime'])
else 
    disp([num2str(integern),'not a prime'])
end
%%
% 5.1.2 Prime               %2 is not a prime  
start=input('press to start');
while start > 0
    intern=input('nth term');
    i=2;
    if mod(intern,i)==0
        disp('not a prime');
    else
        disp('is a prime');
    end
end
%%
%5.1.3 Multiplication Tables 
%i = (1:10)
%j=(1:10)'
for i = 1:10 
    for j = 1:10'
        table(i,j)=i*j;
    end
end
disp(table)     
%%
%5.1.4 Signal Processing 
x = 0:300;
y=rand(1,301);   %low filter sound / noise 
z=zeros(1,301);
z(1) = .5*y(1)+.25*y(2); %Formula, first part removed since 0
z(301)=.25*y(300)+.5*y(301);
%z(2:300) = .25*y(1:299)+.5*y(2:300)+.25*y(3:301);
%Avoid using loops, array indexing 
for i=2:300
    z(i)=.25*y(i-1)+0.5*y(i)+.25*y(i+1);
end
plot(x,[y;z])
%%
%5.1.5.
b = 0; % prime number 
i =2;
while true 
   if isprime(i)
       disp(i)
   end
   i=i+1;
end
%%
% 5.1.5 Prime numbers 
n = 3;
while true 
    p=0;    %if p is zero, it is prime ( p = 0 or 1)
    for i =2:n-1        
        if mod(n,i)==0
            p=1;
        end 
    end 
    if ~p   %if p is not zero, it is prime 
        disp(n)
    end
    n=n+1;
end
%%
%5.1.6 Numerical integration 
for x = (0:100);
    fun = @(x) x.^2;    %y(x)=x^2
    q = integral(fun,0,100)     %integrate with 0,100 limit
end
%% 
%5.1.6. Numreical Integration 
sum = 0;
for x=(0:0.01:100);
    y= x^2;
    sum=sum+y*.01;
end
disp(num2str(sum))
%%
%6.1.2
sphereRadius(1.2345)
%%
%6.1.3
primen = input ('enter the number'); %enters the value
result = myPrimes(primen); %calls the function myPrimes
%%
%6.1.4
f = input('enter the lists first number');
l = input('enter the lists last number');
s = input('enter the lists step number');
result = makeLiist(f,l,s);
disp(result)
%%
% 6.2
% Newton's Method
% Input:
%   func -> function
%   gss -> initial guess
%   ite -> desired number of iterations
%   tol -> tolerance 
% NOTE: Number of iterations will be increased accordingly in order to meet
% the set tolerance value.
% Output:
%   This function will output the number of iterations it ran, and the
%   approximated value.
% Example:
%    >> newt( ' x^3 + x - 1 ', -.7 , 6 , 1e-6 )
%    >> 
%        6 
%
%    ans =
%
%        0.682327803844332
% function apprx = newt(func,gss,ite,tol)
% f = inline(func);
% fp = inline(diff(sym(func)));
% iter = ite;
% for n=1:iter;
%     oldgss = gss;
%     newgss = gss - (f(gss)/fp(gss));
%     gss = newgss;
% end
% if abs(newgss-oldgss) < tol
%     apprx = gss;
%     disp(iter);
% else
%     iter = ite+1;
%     apprx = newt(func,gss,iter,tol);
% end
% end


%%
%7.1.1 
A = [1 2 3;4 5 6;7 8 9]
B = [0.4667 -0.3333 0.1333; -0.0333 0.6667 0.3667; -0.3333 -0.3333 0.3333]
C = A.*B
D=A.*B
D'
%%
%7.1.2 ingular Matrices 
G = [1 2 3;-1/3 -0.6666 -1.0; 7 8 9]
G'
d=det(G)  %Determinant of Matrix G
%%
%7.2
A=[3 1 6;        % Set up LHS matrix
   5 4 2;
   1 3 8]
B = [12;1;-3]
x=inv(A)*B %calculate X

%%
%7.3 Eigenvalues 
A = [2 -4;-1 -1] % root of @ function is 3
fzero(@(lamda) det(A-lamda*eye(size(A))),0) %Looking for zero
%%
%Slide 98
A = [3 2 -1;
    0 5 2;
    2 3 -8]
B = [5 2 9]'
xyz=inv(A)*B
%%
%7.4.1
x = -10:0.1:10;
y = sin(1./x)
plot(x,y);
%%
%7.4.1 second paragraph in previous version
u = y+sin(x)
v = cos(x+y)
[x,y]=meshgrid(0:10,0:10) %To create 0<x<10 and 0<y<10
quiver(u,v)
subplot
streamslice(x,y,u,v)
%%
%7.4.2 Plotting again (b)
[x y] = meshgrid(0:10,0:10)
u = y+sin(x)
v = cos(x+y)
quiver(x,y,u,v)
streamslice(x,y,u,v)

%%
%7.4.3 Extracting sub matrices 
M = [1 2 3 5 8.5 2; -1/3 -0.6666 -1 3 2 -5.1; 7 8 9 2.01 -1 3]
N = M(:,4:6)
%%
%7.4.4 Area of a Circle 
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
%%
%7.4.5
lowerbound = input('Lower Limit');
upperbound = input ('upper limit');

integern = lowerbound:upperbound; %enter the value 
 disp(integern)
 
prims=isprime(integern);
disp(prims)

scatter(integern(prims),zeros(1,sum(prims)))
%%
%5.1.2
n=input('enter')
isPrime=true;
for i=2:floor(n/2)
    if mod(n,i)==0
        isPrime=false;
    end
end
if ~isPrime
    disp('it is not a prime')
else
    disp('it is a prime number')
end 
%%
%7.4.5 current one 
lowerbound = input('Lower Limit');
upperbound = input ('upper limit');

integern = lowerbound:upperbound; %enter the value 
disp(integern)
b = 0; % prime number 
for i = lowerbound:(upperbound-1)   %-1 so that the number doesnt divide by itself 
      if  mod(integern,i)==0 %if i is divisible by upper or lower, = 1
        b=1;  %not a prime 
        disp(b)
      end
if b==0 %is a prime 
    prisms=logical(~b);
    disp(prisms)
end
end  

    
% if b ==1
%     prims =logical(b)
%     disp(b)
%     %prims(L)
%     %boolean(b)


%%
%7.4.5 (5.1.2)
lowerbound = input('Lower Limit');
upperbound = input ('upper limit');

integern = lowerbound:upperbound; %enter the value 
disp(integern)
b = 0; % prime number 
for i = (lowerbound:(upperbound-1))   %-1 so that the number doesnt divide by itself 
    if  mod(integern,i)==0 %if i is divisible by upper or lower, = 1
        b=1;  %not a prime   
    else
        b =0
        prims =logical(b)
        disp(b)
        %prims(L)
        %boolean(b)
    end
end
 


% 
% plot (x(prims),ones(sum(prims)))
% scatter(x(prims), ones(1,sum(prims)))


