% A Hydrostatics Example
%
% A cuboid of length l , width w and height h is made of a material of
% a density that is smaller than the density of the surrounding fluid
% The cuboid is assumed to float stably. 
% This script computes the draught of the cuboid (the volume of the 
% cuboid that remains under water). The program prompts the user 
% to input l , w, h ,density of c and fluid, angle of tilt along l and w and
% if tilts are not horizontal prints a warning as well as the
% stable case volume, mass and draught and a warning if board density is
% greater than fluid density.

% get the input values
l=input('length = ');
w=input('width = ');
h=input('height = ');
rho_c=input('density of cuboid = ');
rho_f=input('density of fluid = ');
anglel=input('angle of length axis to horizon = ');
anglew=input('angle of width axis to horizon = ');

% calculate the volume, mass and draught
volume=l*w*h;
mass=volume*rho_c;
draught=h*rho_c/rho_f;

% output volume, mass and draught with no tilit
disp(['volume = ',num2str(volume),' cubic metres']);
disp(['mass = ',num2str(mass),' kg']);
disp(['draught of board with no tilt = ',num2str(draught),' metres']);

% check a warn about density
if rho_c > rho_f
    disp('Beware - it will sink!')
end

% check and warn about tilt
if (anglel~=0)||(anglew~=0)
    disp('Beware - board tilts !');
end