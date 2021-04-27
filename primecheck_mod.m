%primecheck - a script to check for prime numbers, using mod function
clear;
n=input('enter n: ');
p=0; %use as prime flag
for i=2:n-1
    if mod(n,i)==0
        %mod is zero, so no prime
        p=1;
    else
        %leave p prime flag set
    end
end
if p==0 
    disp(' You entered a prime number');
else
    disp(' Your number is not prime ');
end