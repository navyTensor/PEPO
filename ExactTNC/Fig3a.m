clc
clear all;
close all;
format long;

addpath(genpath('./lib/'));

thetaH = linspace(0.0, 1.55, 32);
thetaH = [thetaH, 1.5707, 0.5*pi]
Nt = numel(thetaH)

Mz = [];
for i = 1 : Nt
    theta = thetaH(i)
    Rx = GetRx(theta);

    depth = 4;
    [A, ~] = InitKiyv(theta, depth);
 	
    t0 = tic;
	[Ns] = Get_Exact_Mz(A)
    t1 = toc(t0)

    Mz = [Mz;[theta, Ns]]

    SaveAsDat('./data/Fig3a_Mz_Exact', Mz);
end
Mz
SaveAsDat('./data/Fig3a_Mz_Exact', Mz);
