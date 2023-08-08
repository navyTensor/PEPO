function [NormM] = Get_Fig3b_Weight10(A, theta)
%% it contains 512 terms in total
Rx = GetRx(theta);
for m = 1 : numel(A)
    if( ndims(A{m}) == 2 )
        A{m} = ncon({Rx, A{m}}, {[-1,1], [1,-2]} );
    elseif( ndims(A{m}) == 3 )
        A{m} = ncon({Rx, A{m}}, {[-1,1], [1,-2,-3]} );
    elseif( ndims(A{m}) == 4 )
        A{m} = ncon({Rx, A{m}}, {[-1,1], [1,-2,-3,-4]} );               
    end
end

[A0] = InitColTensor(A);

Sx = [0.0, 1.0; 1.0, 0.0];
Sy = [0.0,-1.j; 1.j, 0.0];
Sz = [1.0, 0.0; 0.0,-1.0];

[CL0] = GetLeftEnv(A, theta);
[CR0] = GetRightEnv(A0, A0);

%% Merge Left String Operators
cf = sin(theta)^2;
Id = [11,12];
Os = {Sy,Sz*cf};
[CL] = MergeLeftEnv(CL0, Id, Os, A, A);

cf = -cos(theta)*sin(theta);
Id = [10,11];
Os = {Sz,Sz*cf};
[tCL] = MergeLeftEnv(CL0, Id, Os, A, A);
CL = CL + tCL;

cf = -cos(theta)^2;
Id = [9,10];
Os = {Sz,Sy*cf};
[tCL] = MergeLeftEnv(CL0, Id, Os, A, A);
CL = CL + tCL;

cf = cos(theta)*sin(theta);
Id = [9,10,11,12];
Os = {Sz,Sx,Sx,Sz*cf};
[tCL] = MergeLeftEnv(CL0, Id, Os, A, A);
CL = CL + tCL;

%% Merge Right String Operators
cf = cos(theta)^2;
Id = [29,30,31,32,33];
Os = {Sz,Sx,Sy,Sx,Sz*cf};
[AR] = UpdateRightTns(Id, Os, A, A0);
[CR] = MergeRightEnv(CR0, AR, A0);  

cf = -sin(theta)^2;
Id = [31];
Os = {Sy*cf};
[AR] = UpdateRightTns(Id, Os, A, A0);
[tCR] = MergeRightEnv(CR0, AR, A0);  
CR = CR + tCR;

cf = -cos(theta)*sin(theta);
Id = [29,30,31];
Os = {Sz,Sx,Sx*cf};
[AR] = UpdateRightTns(Id, Os, A, A0);
[tCR] = MergeRightEnv(CR0, AR, A0);  
CR = CR + tCR;

cf = -cos(theta)*sin(theta);
Id = [31,32,33];
Os = {Sx,Sx,Sz*cf};
[AR] = UpdateRightTns(Id, Os, A, A0);
[tCR] = MergeRightEnv(CR0, AR, A0);  
CR = CR + tCR;

[NormM] = MergeCLCR(CL, CR, A0, A0);

end

function [CL] = GetLeftEnv(A, theta)
% -Z_17 * ( cos(theta) Z_12 X_13 + sin(theta) Z_13 )

Sx = [0.0, 1.0; 1.0, 0.0];
Sz = [1.0, 0.0; 0.0,-1.0];
D = size(A{14},2);

A14_X = cos(theta)*Sx*A{14};
A14_Z = sin(theta)*Sz*A{14};
A13_Z = ncon({Sz, A{13}}, {[-1,1], [1,-2,-3,-4]} );

AA0 = reshape(ncon({A{14}, A{13}}, {[-2,1], [-1,-3,1,-4]}), [4, D, D]);
AA1 = reshape(ncon({A14_X, A13_Z}, {[-2,1], [-1,-3,1,-4]}), [4, D, D]);
AA2 = reshape(ncon({A14_Z, A{13}}, {[-2,1], [-1,-3,1,-4]}), [4, D, D]);
AA3 = AA1 + AA2;
CL = ncon({conj(AA0), AA3, conj(A{18}), A{18}, -Sz}, {[5,-3,3], [5,-4,4], [1,3,-1], [2,4,-2], [1,2]}, [1,3,4,2,5]);
CL = reshape(CL, [D*D, D*D]);

end

function [CR] = GetRightEnv(A, B)

[CR] = RightMove1st(A, B);
[CR] = RightMoveOdd(6, CR, A, B);
[CR] = RightMoveEvn(5, CR, A, B);
[CR] = RightMoveOdd(4, CR, A, B);
[CR] = RightMoveEvn(3, CR, A, B);

end

function [NormM] = MergeCLCR(CL, CR, A, B)
% A{4,1}: 69-70-74-89-88
% A{4,2}: 66-67-68
% A{4,3}: 73
% A{4,4}: 65
% A{4,6}: 72

Da = size(A{5,2},2);
Db = size(B{5,2},2);
D2 = Da*Db;

CL = reshape(CL, [D2, D2, D2]);
T16 = reshape(ncon({conj(B{1,3}), A{1,3}},{[1,-1,-3], [1,-2,-4]}, [1]),[D2,D2]);
CL = reshape(ncon({CL, T16}, {[-1,1,-3], [1,-2]}, [1]),[D2*D2, D2]);

C3 = reshape(ncon({conj(B{1,4}), A{1,4}}, {[1,-1,-3], [1,-2,-4]}, [1]),[D2,D2]);
T4 = reshape(ncon({conj(B{1,5}), A{1,5}}, {[1,-1,-3,-5], [1,-2,-4,-6]}, [1]),[D2,D2,D2]);    % T4(d,l,r)
T15 = reshape(ncon({conj(B{1,6}), A{1,6}}, {[1,-1,-3], [1,-2,-4]}, [1]),[D2,D2]);
C7 = reshape(ncon({conj(B{1,7}), A{1,7}}, {[1,-1,-3], [1,-2,-4]}, [1]),[D2,D2]);

Cd = reshape(ncon({C3, T4, T15, C7}, {[-1,2], [1,2,3], [3,-2], [1,-3]}, [1,2,3]),[D2, D2*D2]);

CL = CL * Cd;       % CL(1'1,2'2,3'3,4'4)

CR = reshape(CR, [D2, Db, Da, Db, Da, D2]);
CR = ncon({CR, conj(B{2,4}), A{2,4}, conj(B{2,6}), A{2,6}}, ...
     {[-1,1,2,4,5,-6], [3,-2,1], [3,-3,2], [6,-4,4], [6,-5,5]}, [1,2,3,4,5,6]);
CR = ncon({CR, conj(B{2,5}), A{2,5}}, {[-1,1,3,2,4,-6], [5,-2,-4,1,2], [5,-3,-5,3,4]}, [1,2,3,4,5]);

CR = reshape(CR, [D2, D2, Db, Da, Db, Da]);
CR = ncon({CR, conj(B{2,7}), A{2,7}, conj(B{2,9}), A{2,9}}, ...
     {[-1,-2,1,2,4,5], [3,-3,1], [3,-4,2], [6,-5,4], [6,-6,5]}, [1,2,3,4,5,6]);

CR = ncon({CR, conj(B{2,8}), A{2,8}}, {[-1,-2,1,3,2,4], [5,-3,-5,1,2], [5,-4,-6,3,4]}, [1,2,3,4,5]);


NormM = CL(:).'*CR(:);

end

function [CL] = MergeLeftEnv(CL0, Id, Os, A, B)
% 8-9-10-11

tic;
for i = 1 : numel(Os)
    m = Id(i);
    if( ndims(A{m}) == 2 )
        A{m} = ncon({Os{i}, A{m}}, {[-1,1], [1,-2]} );
    elseif( ndims(A{m}) == 3 )
        A{m} = ncon({Os{i}, A{m}}, {[-1,1], [1,-2,-3]} );
    elseif( ndims(A{m}) == 4 )
        A{m} = ncon({Os{i}, A{m}}, {[-1,1], [1,-2,-3,-4]} );               
    end
end
D = size(A{1},2);
D2 = D*D;
A12 = reshape(ncon({conj(B{12}), A{12}}, {[1,-1,-3], [1,-2,-4]}), [D2, D2]);
A11 = reshape(ncon({conj(B{11}), A{11}}, {[1,-1,-3], [1,-2,-4]}), [D2, D2]);
A10 = reshape(ncon({conj(B{10}), A{10}}, {[1,-1,-3], [1,-2,-4]}), [D2, D2]);
A9 = reshape(ncon({conj(B{9}), A{9}}, {[1,-5,-1,-3], [1,-6,-2,-4]}), [D2, D2*D2]);
CL = CL0*A12;
CL = CL*A11;
CL = CL*A10;
CL = CL*A9;
toc;

end


function [CR] = MergeRightEnv(CR, A, B)
% A{2,1}: 31-32-36-51-50
% A{2,2}: 30-29-28
% A{2,3}: 35

tic;
Da = size(A{2,3},2);
Db = size(B{2,3},2);
D2 = Da*Db;

C5 = reshape(ncon({conj(B{2,1}), A{2,1}}, {[1,-1,-3], [1,-2,-4]}),[D2, D2]);
CR = reshape(CR, [D2, D2*D2*D2]);
CR = C5*CR;

CR = reshape(CR, [Db, Da, Db, Da, D2, D2]);
CR = ncon({CR, conj(B{2,2}), A{2,2}, conj(B{2,3}), A{2,3}}, ...
     {[1,2,3,4,-5,-6], [8,-1,-3,1,6], [8,-2,-4,2,7], [5,6,3], [5,7,4]}, [3,4,5,1,6,2,7,8]);
toc;

end

function [AR] = UpdateRightTns(Id, Os, A, Ac)

for i = 1 : numel(Os)
    m = Id(i);
    if( ndims(A{m}) == 2 )
        A{m} = ncon({Os{i}, A{m}}, {[-1,1], [1,-2]} );
    elseif( ndims(A{m}) == 3 )
        A{m} = ncon({Os{i}, A{m}}, {[-1,1], [1,-2,-3]} );
    elseif( ndims(A{m}) == 4 )
        A{m} = ncon({Os{i}, A{m}}, {[-1,1], [1,-2,-3,-4]} );               
    end
end

AR = Ac;
D = size(A{1},2);
AR{2,1} = reshape(ncon({A{32}, A{33}, A{37}, A{52}, A{51}}, {[-1,-6,1], [-2,1,2], ...
          [-3,2,3], [-4,3,4], [-5,4,-7]}, [1,2,4,3]),[2^5,D,D]);                         % A{1,0}: 31-32-36-51-50
AR{2,2} = reshape(ncon({A{31}, A{29}, A{30}}, {[-1,1,-4,-6], [-3,2,-5,-7], ...
          [-2,1,2]}, [1,2]),[2^3,D,D,D,D]);                                              % A{1,1}: 30-29-28

end
