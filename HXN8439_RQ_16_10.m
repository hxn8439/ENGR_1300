% Hamilton Nguyen Engr 1300.001 7/3/2018

% Problem Statement: Write a program to convert a temperature provided by the user in units
% of Fahrenheit to units of Kelvins. As a test case, you may assume that
% the user provides the temperature of -129 degrees Fahrenheit, which is
% the worlds lowest recorded temperature. 

%Known Variable: T[F]=1.8T[C] +32 , T[K]=T[C]+273 
%Unknown:N/A, write a functional program that convert Fahrenheit to Kelvin.
%Assumption: N/A
%Equations: Kelvin=((Fahrenheit-32)/1.8)+273 (two equations were modified
%for the conversion between Fahrenheit to Kelvin)
%Test case: use -129 degrees Fahrenheit to convert to kelvins, require a
%user to input the value.

clc;
clear; 

%input Fahrenheit variable and initialize user input using an arguement
%string.
Fahrenheit=input('Please input the temperature in [degrees Fahrenheit]: ');

% Use If statement when user's input for Fahrenheit is below -459 degrees.
if Fahrenheit<-459
    %print error using argument string
    error('Invalid! Value under -459 degrees Fahrenheit is not possible, please enter a valid temperature in degrees Fahrenheit.');

%terminate program
end

%Use if statement when user's input perform a test case when converting -129 degrees F to kelvin. 
if Fahrenheit==-129
    %print argument string to prompt a user with information.
    fprintf('\nWow! That is the world record for lowest recorded temerature!\n');

 %set Kelvin and Fahrenheit equation, and calculate the conversion 
   Kelvin=((Fahrenheit-32)/1.8)+273;
   %print argument string to prompt a user with solution of the conversion.
    fprintf('\nThe %0.0f degrees Fahrenheit is converted to %0.0f Kelvins\n', Fahrenheit, Kelvin);
    
    %use else statement when user's input the Fahrenheit temperature that
    %is above -459 degrees [F] and not equal to -129 degrees [F].
else
        
 %set Kelvin and Fahrenheit equation, and calculate the conversion 
        Kelvin=((Fahrenheit-32)/1.8)+273;
 %print argument string to prompt a user with solution of the conversion.
    fprintf('The %0.0f degrees Fahrenheit is converted to %0.0f Kelvins\n', Fahrenheit, Kelvin);
 
%end program    
end