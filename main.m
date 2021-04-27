%Author: Awabullah M Syed 
%Student ID: 2002 000 33
%Date Completed: 10 November 2020
%***************************Question 1************************************%
%Code Description: 
    %This code allows the user to select either matrix M1 or
    %M2 and then perform relevant operation. Relevant operation includes
    %finding eigenvalues (D) and eigenvectors(V &W) of the selected matrix
    %if the determinant is nonzero, otherwise displays that the determinant
    %is 0. The code also guards against poor user input including the use
    %of invalied notation.    
clear
clc
M1 = [-2 -4.1 2 3; -2 1.1 2 3.3;4.1 2 5 8.1; 1 3 2.2 1.5]; %Adds matrix M1 
M2 = [1 3 9 2; 5 8 4 3; 10 16 8 6; 2 3 1 8]; %Adds matrix M2 
y = [-1 2 -2 4]'; %Adds vector y
disp('Matrix M1 is'); disp(M1) %User will be displayed matrix M1
disp('Matrix M2 is'); disp(M2) %User will be displayed matrix M2 
%-------------Ask user to select M1 or M2---------------------------------%
A = input('Please select either matrix "M1" or "M2"'); 
if A == M1 | A == M2 %guards against any poor input integer i.e. 3 or i
    if det(A) ~= 0 %Determinant of A is nonzero (not zero) 
%Eigenvector
        [V,D,W] = eig(A); %V = right eigenvectors & W is left eigenvectors 
        disp('The right eigenvector is'); disp(V) %A*V = V*D
        disp('The left eigenvector is'); disp(W)  %W*A = D*W
%Eigenvalues       
        a = diag(D); %Taking the diagonal of D - Eigenvalues 
        disp('Eigenvalues of the selected matrix are');disp(a) %Eigenvalues 
%Solution x to the equation Ax = y
        x = A\y;
        disp('The solution x to the equation Ax = y is'); disp(x) %x matrix      
    else %if the determinant of the selected matrix is 0
        disp('The Determinant of the selected matrix is zero')%Informs user
    end 
else  %Guards against poor input 
    disp('Please select a valid matrices or use correct notation "M1" or "M2"')
end  
%%
%********************************Question 2*******************************
%Code Description:
    %The following code models the HIRES reaction problem using ODE45
    %and ODE15s. The code outputs two Figures; one & two. Figure 1 compares
    %the result o )DE45 and ODE15s while Figure 2 plots first hundred
    %points of ODE45 and ODE15 
clear 
clc
%Initial Conditions 
x(1)=1; x(2)=0; x(3)=0; x(4)=0; x(5)=0; x(6)=0; x(7)=0; x(8)=0.0057; 
ic = [x(1) x(2) x(3) x(4) x(5) x(6) x(7) x(8)];
t0 = 0; %Initial Time 
tf = 300; %Final Time  
opts = odeset('RelTol', 1e-3,'AbsTol',1e-6); %Options argument 
%-----------------------------ODE45---------------------------------------%
% Solution using ODE45 Function with time interval: 0 - 300 seconds 
tic %Tic toc starting point for ode45
%x_45 & t_45 is used to differentiate between ode45 & ode15
[t_45,x_45] = ode45(@HIRES,[t0 tf],ic,opts); 
execution_time45 = toc; %Execution time of  ODE45
disp(['The execution time for ODE45 is ',num2str(execution_time45)])
% ------------------------ODE15s------------------------------------------%
tic %Tic toc starting point for ode15s
[t_15,x_15] = ode15s(@HIRES,[t0 tf],ic,opts);
execution_time15 = toc; %Execution time of ODE15s 
disp(['The execution time for ODE15s is ', num2str(execution_time15)])
%---------------------Plotting ODE45 & ODE15s----------------------------%
figure(1);
set(gcf,'Units','Normalized','OuterPosition',[0 0 0.5 1]); %Figure positioning
set(gcf,'Toolbar','none','Menu','none'); %Making Figure 1 fullscreen
% Plotting ODE45 in first half of Figure 1 
subplot(2,1,1);
semilogx(t_45,x_45) %Logarithmic x-axis of ODE45
title({('ODE_4_5')...
    ['\fontsize{9} {\color{blue}Execution Speed: '...
    num2str(execution_time45),', RelTol: 1e-3,'...
    ',AbsTol: 1e-6}']
    })
xlabel('time $(seconds)$','interpreter','latex','FontSize',10);
ylabel('Concentration $(mol/dm^3)$','interpreter','latex','FontSize',10)
legend('x1','x2','x3','x4','x5','x6','x7','x8','Location','northeast')
% Plotting ODE15s in second half of Figure 1
subplot(2,1,2);
semilogx(t_15,x_15) %Logarithmic x-axis of ODE15s
title({('ODE_1_5')...
    ['\fontsize{9} {\color{blue}Execution Speed:'...
    num2str(execution_time15),', RelTol: 1e-3'...
    ', AbsTol: 1e-6}']
    })
xlabel('time $(seconds)$','interpreter','latex','FontSize',10);
ylabel('Concentration $(mol/dm^3)$','interpreter','latex','FontSize',10)
legend('x1','x2','x3','x4','x5','x6','x7','x8','Location','northeast')

%-------------------Second Figure------------------------------------------ 
figure(2);
k=1;
while k<9
    subplot(8,1,k);
    plot(t_45(1:100,:),x_45(1:100,k),'k.'); hold on 
    plot(t_15(1:100,:),x_15(1:100,k),'g');
    xlabel('time $(seconds)$','interpreter','latex','FontSize',5);
    ylabel('Conc $(mol/dm^3)$','interpreter','latex','FontSize',5)
    legend('ODE_4_5','ODE_1_5_s','Location','northeast')
    title ({['First 100 Points of x' num2str(k)]})
    k = k + 1;
end
set(gcf,'Units','Normalized','OuterPosition',[0.5 0 0.5 1]);
set(gcf,'Toolbar','none','Menu','none');