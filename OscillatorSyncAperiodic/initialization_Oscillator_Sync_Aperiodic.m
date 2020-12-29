%--------------------------------------------------------------------------
% Project: Hybrid Feedback Control book
% Description: Synchronization of Oscillators with
% Aperiodic Measurements
% https://hybrid.soe.ucsc.edu/software
% http://hybridsimulator.wordpress.com/
% Filename: initialization_Oscillator_Sync_Aperiodic
% Set of simulation files created and edited by 
% Yusheng Fang and Ricardo Sanfelice
%--------------------------------------------------------------------------

% clear all                                                               
                                                                        
% initial conditions                                                    
x1_0 = [-1;0];                                                            
x2_0 = [1;0];
x3_0 = [0.5;0];
x4_0 = [2;0];
x11_0= [0;0;0.3+0.35*rand];
x22_0= [0;0;0.3+0.35*rand];
x33_0= [0;0;0.3+0.35*rand];
x44_0= [0;0;0.3+0.35*rand];

%global constants
global Kmatrix;
% Amatrix = [0 1;-1 0];
% Bmatrix = [0;1];
Kmatrix = [-1 -2];

% simulation horizon                                                    
T = 15;                                                                 
J = 30;

                                                                        
% rule for jumps                                                        
% rule = 1 -> priority for jumps                                        
% rule = 2 -> priority for flows                                        
% rule = 3 -> no priority, random selection when simultaneous conditions
rule = 1;                                                               
                                                                        
%solver tolerances
RelTol = 1e-8;
MaxStep = .005;