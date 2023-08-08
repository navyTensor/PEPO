function [NormC] = LeftMoveLst(CL, A, B)
%%  contract last column: 6
%   A[6][0] = A3                % A[6][0]: 122                       % A[122](m,u,l,r)
%   A[6][1] = A2_3              % A[6][1]: 121-120-119
%   A[6][2] = A3                % A[6][2]: 118                       % A[118](m,u,l,r)
%   A[6][3] = A2_5              % A[6][3]: 117-116-115-114-113

Da = size(A{7,1},2);
Db = size(B{7,1},2);
D2 = Da*Db;
CL = reshape(CL, [Db, Da, Db, Da, D2, D2]);
CL = reshape(ncon({CL, conj(B{7,1}), A{7,1}}, {[1,3,2,4,-3,-4], [5,1,2,-1], [5,3,4,-2]}, [1,2,3,4,5]),[D2,D2,D2]);

C3 = reshape(ncon({conj(B{7,2}), A{7,2}}, {[1,-1,-3], [1,-2,-4]}, [1]),[D2,D2]);
C5 = reshape(ncon({conj(B{7,4}), A{7,4}}, {[1,-1,-3], [1,-2,-4]}, [1]),[D2,D2]);
T3 = reshape(ncon({conj(B{7,3}), A{7,3}}, {[1,-1,-3,-5], [1,-2,-4,-6]}, [1]),[D2,D2,D2]);    % T3(u,l,r)

NormC = ncon({CL, T3, C3, C5}, {[1,2,3], [4,2,5], [1,4], [5,3]}, [1,3,2,4,5]);

end

