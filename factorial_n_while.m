% A script to compute factorial n using a while loop
n=input('input n: ');
factn=1;%initialise our factorial n answer
i=1; 
while i<=n
    factn=factn*i;
    i=i+1;
end
disp(['factorial ',num2str(n),' = ',num2str(factn)]);