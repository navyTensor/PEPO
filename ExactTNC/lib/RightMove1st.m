function [CR] = RightMove1st(A, B)
%%  contract last column: 6
%   A{6}{0} = A3                % A{6}{0}: 122
%   A{6}{1} = A2_3              % A{6}{1}: 121-120-119
%   A{6}{2} = A3                % A{6}{2}: 118
%   A{6}{3} = A2_5              % A{6}{3}: 117-116-115-114-113

Da = size(A{7,1},2);
Db = size(B{7,1},2);
D2 = Da*Db;
CR = reshape(ncon({conj(B{7,1}), A{7,1}}, {[1,-1,-3,-5], [1,-2,-4,-6]}, [1]),[D2*D2, D2]);
C3 = reshape(ncon({conj(B{7,2}), A{7,2}}, {[1,-1,-3], [1,-2,-4]}, [1]),[D2,D2]);
CR = CR*C3;

T3 = reshape(ncon({conj(B{7,3}), A{7,3}}, {[1,-1,-3,-5], [1,-2,-4,-6]}, [1]),[D2*D2,D2]);
C5 = reshape(ncon({conj(B{7,4}), A{7,4}}, {[1,-1,-3], [1,-2,-4]}, [1]),[D2,D2]);   % C5(up, left)
T3 = reshape(T3*C5, [D2, D2*D2]);
CR = CR*T3;

end
