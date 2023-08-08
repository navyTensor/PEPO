
clc
clear all;
close all;
format long;

addpath(genpath('./lib/'));

depth = 1;
D = 2;

fnm = ['./data/Fig4a_W17_', num2str(D)];
thetaH = linspace(0.0, 1.55, 32);
thetaH = [thetaH, 1.5707, 0.5*pi];
Nt = numel(thetaH)

EM = [];
for m = 1 : Nt
    theta = thetaH(m);
	
	t0 = tic;
    [A, Td, EvoX, EvoZ] = InitFig4aPEPS(theta, depth);

    %[A, Lam, TErr, Coef] = SU_PEPS(D, A, [], [], []);
    [A, Lam, TErr, Coef] = SU_QR_PEPS(D, A, [], [], []);

    for i = 1 : 4
        %[A, Lam, tTErr, tCoef] = SU_PEPS(D, A, Lam, EvoX, EvoZ);
        [A, Lam, tTErr, tCoef] = SU_QR_PEPS(D, A, Lam, EvoX, EvoZ);
    	Coef = Coef + tCoef;
        TErr = max(TErr, tTErr);
        %disp( [i, tTErr, TErr] );
    end

    [A] = GetSuTensors(A, Lam);

    [Ec, Coef2] = GetExactCircuit(A, EvoX);
    W17 = real(exp(Coef+Coef2)*Ec)

    EM = [EM; [theta, W17, TErr]]
%     disp( [theta, W17, Coef, Coef2, Ec]);

    %save(fnm, 'EM', '-v7.3');
    SaveAsDat(fnm, EM);
	t1 = toc(t0)
end
%save(fnm, 'EM', '-v7.3');
SaveAsDat(fnm, EM);


    

