clc
clear all;
close all;
format long;

addpath(genpath('./lib/'));

thetaH = linspace(0.0, 1.55, 32);
thetaH = [thetaH, 1.5707, 0.5*pi]
Nt = numel(thetaH)

W10 = [];
for i = 1 : Nt
    theta = thetaH(i)
    Rx = GetRx(theta);

    depth = 3;
    [A, ~] = InitKiyv(theta, depth);
 	
	Norm0 = Get_Exact_Circuit(A)

    t0 = tic;
	[Ns] = Get_Fig3b_Weight10(A, theta)
    t1 = toc(t0)

    W10 = [W10;[theta, real(Ns)/real(Norm0)]]

    SaveAsDat('./data/Fig3b_W10_Exact', W10);
end
W10
SaveAsDat('./data/Fig3b_W10_Exact', W10);
