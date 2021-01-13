% Hamilton Nguyen Engr 1300.001 7/3/2018

% Problem Statement: A rod on the surface of Jupitor's moon Callisto has a volume of 0.3 cubic
% meters. Write a MatLab program that will determine the weight of the rod
% in units of pound-force (lb_f). The specific gravity is 4.7.
% Gravitational acceleration on Callisto is 1.25 meters per second squared.

%Known Variable: Vrod=0.3 [m^3], S.G.=4.7, and G=1.25 [m/s^2],
%density_water=1000 [kg/m^3], 1N=0.225 [lbf]
%Unknown Variable: weight of rod in F=?[lbf]
%Assumption: N/A
%Equations: mass=Vrod*sg*density_water ,  weight_rod=mass*Gravity_Callisto*pound_force;

clc; 
clear;

%input specific gravity
sg=4.7;
%input density of water
density_water=1000;
%input gravity on Callisto
Gravity_Callisto=1.25;
%input conversion from Newton to pound_force
pound_force=0.225;

%Declaration of volume as a variable and initialize user's input.
V=input('Please enter the volume of the rod [cubic meters]:');

%Set a condition that the volume must equal to 0.3 cubic meters, if its not 0.3 
%cubic meters produce an error message using if or else statement. 

%using if statement when user's input Vrod does not equal 0.3 [m^3]
if V~=0.3
    error('Please enter 0.3 cubic meters as stated in the question')
    
%using else statement when user's input Vrod does equal 0.3 [m^3]
else 
   %calculate mass 
    mass=V*sg*density_water;
   
    %calculate weight_rod using input mass, gravity of callisto, and
    %coversion from Newton to pound force.
    weight_rod=mass*Gravity_Callisto*pound_force;
    
    %Print solution using a string argument.
    fprintf('The weight of the rod is %0.0f pounds-force\n', weight_rod);
    
    %end program
end