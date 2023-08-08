
clc
clear all;
close all;
format long;

addpath(genpath('./lib/'));

depth = 1;
D = 24;

fnm = ['./data/Fig3a_Mz_D', num2str(D)];
thetaH = linspace(0.0, 1.55, 32);
thetaH = [thetaH, 1.5707, 0.5*pi]
Nt = numel(thetaH)

EM = [];
for m = 1 : Nt
    theta = thetaH(m)
	
	t0 = tic;
    Mi = zeros(127,1);
    TErr = 0;
    parfor isite = 0 : 126
        [A, EvoX, EvoZ] = InitFig3aPEPS(isite, theta, depth);

        %[A, Lam, iTErr, Coef] = SU_PEPS(D, A, [], [], []);
        [A, Lam, iTErr, Coef] = SU_QR_PEPS(D, A, [], [], []);

        for i = 1 : 4
            %[A, Lam, tTErr, tCoef] = SU_PEPS(D, A, Lam, EvoX, EvoZ);
            [A, Lam, tTErr, tCoef] = SU_QR_PEPS(D, A, Lam, EvoX, EvoZ);
        	Coef = Coef + tCoef;
            iTErr = max(iTErr, tTErr);
            %disp( [i, tTErr, TErr, Coef] );
        end

        TErr = max(TErr, iTErr);

        [A] = GetSuTensors(A, Lam);

        [Ec, Coef2] = GetExactCircuit(A, EvoX);
        Zi = real(exp(Coef+Coef2)*Ec);
        Mi(isite+1) = Zi;
    end
    Mz = sum(Mi)/127.0;

    disp( [theta, Mz, TErr] );
    
    EM = [EM; [theta, Mz, TErr]]
    %save(fnm, 'EM', '-v7.3');
    SaveAsDat(fnm, EM);

	t1 = toc(t0)
end
%save(fnm, 'EM', '-v7.3');
SaveAsDat(fnm, EM);

    

