clc
clear all;
close all;
format long;

addpath(genpath('./lib/'));

thetaH = linspace(0.0, 1.55, 32);
thetaH = [thetaH, 1.5707, 0.5*pi]
Nt = numel(thetaH)

W17 = [];
for i = 1 : Nt
    theta = thetaH(i)
    Rx = GetRx(theta);

    depth = 4;
    [A, ~] = InitKiyv(theta, depth);
  
    t0 = tic;
    [Ns] = Get_Fig4a_Weight17(A, theta);
    t1 = toc(t0)

    W17 = [W17;[theta, real(Ns)]]

    SaveAsDat('./data/Fig4a_W17_Exact', W17);
end
W17
SaveAsDat('./data/Fig4a_W17_Exact', W17);
