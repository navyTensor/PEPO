%% Uz = (Rz)^{+}, Ux = (Rx)^{+}
% <0|(UxUz)^19 UxUz(Z62)RzRx (RzRx)^19|0> = <0|(UxUz)^19 Ux(Z62)Rx (RzRx)^19|0> 
%=<0|Ux(UyUxUzUx)^9 UyUx (Z62) RxRy (RxRzRxRy)^9 Rx|0>

clc
clear all;
close all;
format long;

addpath(genpath('./MyFunctions/'));

Nt = 1;
depth = 1;
D = 64;

% fnm = ['./fig4b/Fig4bRT_Z62_D', num2str(D)];
ThetaList = linspace(0.15*pi, 0.15*pi, Nt);
EM = [];
for m = 1 : Nt
    theta = ThetaList(m);

    [A, EvoX, EvoY, EvoZ] = InitFig4brtPEPS(theta);

    [A, Lam, TErr, Coef] = SU_PEPS(D, A, [], [], []);
% 
    for i = 1 : 1
        [A, Lam, tTErr, tCoef] = SU_PEPS(D, A, Lam, EvoX, EvoZ);
        Coef = Coef + tCoef;
        [A, Lam, tTErr, tCoef] = SU_PEPS(D, A, Lam, EvoX, EvoY);
    	Coef = Coef + tCoef;
        TErr = max(TErr, tTErr)
        disp( [i, tTErr, TErr, Coef] );
    end
    [A] = GetSuTensors(A, Lam);

%     Coef = 0;
%     TErr = 0;
    Px = GetRx(0.5*pi);
    EvoP = MatKron(conj(Px^4), Px^4).';
    
    [Ec, Coef2] = GetExactCircuit(A, EvoP*EvoX);
    Z62 = real(exp(Coef+Coef2)*Ec)
    EM = [EM; [theta, Z62, TErr]]
    disp( [theta, Z62, Coef, Coef2, Ec]);

%     save(fnm, 'EM', '-v7.3');
%     SaveAsDat(fnm, EM);
end


for m = 1 : Nt
    theta = ThetaList(m);

    [A, Td, EvoX, EvoZ] = InitFig4bPEPS(theta, 1);

    [A, Lam, TErr, Coef] = SU_PEPS(D, A, [], [], []);

    for i = 1 : 2
        [A, Lam, tTErr, tCoef] = SU_PEPS(D, A, Lam, EvoX, EvoZ);
    	Coef = Coef + tCoef;
        TErr = max(TErr, tTErr)
        disp( [i, tTErr, TErr, Coef] );
    end

    [A] = GetSuTensors(A, Lam);

    [Ec, Coef2] = GetExactCircuit(A, EvoX);
    Z62 = real(exp(Coef+Coef2)*Ec)
    EM = [EM; [theta, Z62, TErr]]
    disp( [theta, Z62, Coef, Coef2, Ec]);
    
    Exact_D3 = cos(theta)^3*(1+sin(theta)^2)
    Exact_D4 = cos(theta)^4*(1+2*sin(theta)^2)-3.0*cos(theta)^6*sin(theta)^10

%     save(fnm, 'EM', '-v7.3');
%     SaveAsDat(fnm, EM);
end

    

