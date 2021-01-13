% Hamilton Nguyen Engr 1300.001 7/3/2018

% Problem Statement: Summary: A cylindrical tank filled to a height of 25 feet with tribromoethylene has
%been pressurized to 3 atmospheres(Psurface=3 atmospheres). The total
%pressure in at the bottom of the tank is 5 atmospheres. Write a MATLAB
%program to determine the density of tribromoethylene in units of kilograms
%per cubic meter. 

%Known Variable: height=25ft, Psurface=3 atm, Ptotal=5 atm, 1m =3.28 ft,
%1atm= 101325 Pa
%Unknown variable: Density=? [kg/m^3]
%Assumption: g=9.807 m/s^2
%Equations: Ptotal=Psurface+(density*g*H),
%density_tribromoethylene=((Ptotal-Psurface)*101325)/((gravity)*(height/3.28)).
%Test case: use the above information to perform user's input and determine
%if the result is true.

clc;
clear;

%Declaration and Initializing variables and user's input.

%user input height
height=input('Please enter the value of height in [ft]:\n');
%user input surface pressure
Psurface=input('Please enter the value of surface pressure in [atm]:\n');
%user input total pressure
Ptotal=input('Please enter the value of total pressure in [atm]:\n');
%input gravity 
gravity=9.807;

%calculate density of Tribromoethylene and convert [atm] to [pa] and height from [ft] to
%[m] with the end result of [kg/m^3]
density_tribromoethylene=((Ptotal-Psurface)*101325)/((gravity)*(height/3.28));

%print solution using an argument string showing the density of
%Tribromoethylene.
fprintf('The density of Tribromoethylene is %0.0f kilograms per cubic meter [kg/m^3].\n', density_tribromoethylene);

