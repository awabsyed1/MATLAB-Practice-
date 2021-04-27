function primeness=myPrimes2(num)
%This function checks if the input argument num is a prime number and
%returns '1' if 'num' is prime. Otherwise, it returns zero. If the 'num<=1'
%or 'num>=10,000, it returns '-1' to indicate the input was not valid.
%It is named 'myPrimes' to avoid confusion with Matlab's 'isprime'
%function, otherwise 'isprime' would have been a better name.

if (num > 1) && (num <10000)
    primeness=1;
    for i=2:(num-1) % prime divisible by 1 or itself ?? so don't test n
        if ~mod(num,i) % if n is divisible by i
            primeness = 0; % then not prime
        end
    end
else
    primeness=-1;
end

