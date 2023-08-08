function [Uz, Rzz] = GetRzz(phi)
% return Uz[m,m',b]=Uz[n,n',b], Rzz[mn, m'n']

%disp( "Rbond: " )
Rb = [exp(-0.5j*phi), exp(0.5j*phi); exp(0.5j*phi), exp(-0.5j*phi)];

Sb = [2.0*cos(0.5*phi), -2.0j*sin(0.5*phi)];
Sq = diag(sqrt(Sb));
Pb = [1.0, 1.0; 1.0, -1.0]./sqrt(2.0);

%disp( "Pb@Sq@Sq@Pb: " )
%Pb*Sq*Sq*Pb

Us = zeros(2,2,2);  % U[m,m',b]
Us(1,1,1) = 1.0;
Us(2,2,2) = 1.0;

Rzz = ncon({Us, Us, Rb}, {[-1,-3,1], [-2,-4,2], [1,2]}, [1,2]);
Rzz = reshape(Rzz, [4,4]);

Uz = ncon({Us, Pb*Sq}, {[-1,-2,1], [1,-3]}, [1]);

%Ruu = ncon([Uz, Uz], ([-1,-3,1], [-2,-4,1]), [1])
%Ruu = Ruu.reshape([4,4])

%print( "Uz@Uz: ", Ruu )

%print( "dist(Rzz, Ruu): ", torch.dist(Rzz, Ruu) )

end




