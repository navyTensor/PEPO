function [CL, Coef] = FoldedLeftMove1st(A)
%%  contract first column
% A{1,1}: 13-12-17-11-10-9
% A{1,2}: 8
% A{1,3}: 16
% A{1,4}: 7-6-5
% A{1,5}: 4
% A{1,6}: 15
% A{1,7}: 3-2-1-0-14-18-19

C6 = ncon({A{14}, A{13}, A{18}, A{12}, A{11}, A{10}}, {[-3,2], ...
          [1,2,3], [3,-2], [1,4], [4,5], [5,-1]}, [2,3,5,4,1]);                      % C6: 13-12-17-11-10-9
tCoef6 = max(abs(C6(:)));
C6 = C6/tCoef6;
Coef = log(tCoef6);

C3 = (A{8}*A{7})*A{6};                                                               % C{1,4}: 7-6-5
tCoef3 = max(abs(C3(:)));
C3 = C3/tCoef3;
Coef = Coef + log(tCoef3);

C7 = (A{4}*A{3})*(A{2}*A{1})*(A{15}*A{19})*A{20};                                    % C{1,7}: 3-2-1-0-14-18-19
tCoef7 = max(abs(C7(:)));
C7 = C7/tCoef7;
Coef = Coef + log(tCoef7);

Cu = ncon({C6, A{9}, A{17}}, {[1,-1], [-3,1,2], [2,-2]}, [1,2]);
tCoefu = max(abs(Cu(:)));
Cu = Cu/tCoefu;
Coef = Coef + log(tCoefu);

Cd = ncon({C3, A{5}, A{16}, C7}, {[-1,2], [1,2,3], [3,-2], [1,-3]}, [1,2,3]);
tCoefd = max(abs(Cd(:)));
Cd = Cd/tCoefd;
Coef = Coef + log(tCoefd);

Du = size(Cu);
Dd = size(Cd);
Cu = reshape(Cu, [Du(1)*Du(2), Du(3)]);
Cd = reshape(Cd, [Dd(1), Dd(2)*Dd(3)]);
CL = reshape(Cu*Cd, [Du(1), Du(2), Dd(2), Dd(3)]);       % CL(1'1,2'2,3'3,4'4)
tCoefCL = max(abs(CL(:)));
CL = CL/tCoefCL;
Coef = Coef + log(tCoefCL);

end
