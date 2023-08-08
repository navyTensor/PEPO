function [NormC, Coef] = FoldedLeftMoveLst(CL, A)
%%  contract last column: 6
%   A[6][0] = A3                % A[6][0]: 122                       % A[122](m,u,l,r)
%   A[6][1] = A2_3              % A[6][1]: 121-120-119
%   A[6][2] = A3                % A[6][2]: 118                       % A[118](m,u,l,r)
%   A[6][3] = A2_5              % A[6][3]: 117-116-115-114-113

CL = ncon({CL, A{123}}, {[1,2,-2,-3], [1,2,-1]}, [1,2]);
tCoef = max(abs(CL(:)));
CL = CL/tCoef;
Coef = log(tCoef);

C3 = (A{122}*A{121})*A{120};    
tCoef = max(abs(C3(:)));
C3 = C3/tCoef;
Coef = Coef + log(tCoef);

C5 = ncon({A{118}*A{117}*A{116}, A{115}, A{114}},{[-1,1],[1,-2,2],[-3,2]},[2,1]);    % C{7,4}: 117-116-115-114-113
tCoef = max(abs(C5(:)));
C5 = C5/tCoef;
Coef = Coef + log(tCoef);

NormC = ncon({CL, A{119}, C3, C5}, {[1,2,3], [4,2,5], [1,4], [5,3]}, [1,3,2,4,5]);

end

