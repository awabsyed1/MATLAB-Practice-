function result =myPrimes(n)
    if (n > 1) && (n < 10000) %Greater than 1 and smaller than 10 000
        result = 1;
        for i = 2:n-1
            if ~mod(n,i)
                result=0; %0 becuase of ~ 
                disp('is a prime')
            else 
                disp('not a prime')
            end 
        end
    else 
        result=-1;
        disp('too big of a number')
    end
    
end 