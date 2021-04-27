% Hydrostatics example script
%
% A cuboid of length l , width w and height h is made of a material of
% a density c that is smaller than the density of the surrounding fluid
% The cuboid is assumed to float stably. 
%
% This script computes the draught of the cuboid (the volume of the 
% cuboid that % remains under water). The program prompts the user to 
% input l , w, h , density of c and fuid (use input()) and prints the
% resulting volume, mass and draught.
% Add an if statement to warn if the cuboid is more dense than the fluid

%get our input values
l=input('length = ');
w=input('width = ');
h=input('height = ');
rho_c=input('density of cuboid = ');
rho_f=input('density of fluid = ');

%calculate the volume, mass and draught
volume=l*w*h;
mass=volume*rho_c;
draught=h*rho_c/rho_f;

%output the results, and warning if applicable
disp(['volume = ',num2str(volume),' cubic metres']);
disp(['mass = ',num2str(mass),' kg']);
disp(['draught = ',num2str(draught),' metres']);
if rho_c > rho_f
    disp('Beware - it will sink!')
end