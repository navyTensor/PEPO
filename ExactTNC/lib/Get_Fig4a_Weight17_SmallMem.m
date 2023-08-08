function [NormM] = Get_Fig4a_Weight17_SmallMem(A, theta)
%% it contains 512 terms in total
[A0] = InitColTensor(A);

Sx = [0.0, 1.0; 1.0, 0.0];
Sy = [0.0,-1.j; 1.j, 0.0];
Sz = [1.0, 0.0; 0.0,-1.0];

[CL0] = GetLeftEnv(A0, A0);
%% Merge Left String Operators
cf = cos(theta)^2*sin(theta);
Id = [38,39,41,42,53,57,58,54];
Os = {Sx,Sx,Sx,Sx,Sx,Sx,Sx,Sz};
[AL] = UpdateLeftTns1(Id, Os, A, A0);
[CL1] = MergeLeftEnv1(CL0, AL, A0)*cf;   %Env1_1

cf = sin(theta)^3;
Id = [53,57,58,38,42,54];
Os = {Sx,Sx,Sx,Sy,Sy,Sz};
[AL] = UpdateLeftTns1(Id, Os, A, A0);
[tCL] = MergeLeftEnv1(CL0, AL, A0);   %Env1_2
CL1 = CL1 + tCL*cf;

cf = cos(theta)*sin(theta)^2;
Id = [41,42,53,57,58,38,40,54];
Os = {Sx,Sx,Sx,Sx,Sx,Sy,Sz,Sz};
[AL] = UpdateLeftTns1(Id, Os, A, A0);
[tCL] = MergeLeftEnv1(CL0, AL, A0);   %Env1_3
CL1 = CL1 + tCL*cf;

cf = cos(theta)*sin(theta)^2;
Id = [38,39,53,57,58,42,40,54];
Os = {Sx,Sx,Sx,Sx,Sx,Sy,Sz,Sz};
[AL] = UpdateLeftTns1(Id, Os, A, A0);
[tCL] = MergeLeftEnv1(CL0, AL, A0);   %Env1_4
CL1 = CL1 + tCL*cf;

cf = cos(theta)*sin(theta)^2;
Id = [42,43,53,57,58,38,44,54];
Os = {Sx,Sx,Sx,Sx,Sx,Sy,Sz,Sz};
[AL] = UpdateLeftTns1(Id, Os, A, A0);
[tCL] = MergeLeftEnv1(CL0, AL, A0);   %Env1_5
CL1 = CL1 + tCL*cf;

cf = -cos(theta)^3;
Id = [38,39,41,43,53,57,58,42,44,54];
Os = {Sx,Sx,Sx,Sx,Sx,Sx,Sx,Sy,Sz,Sz};
[AL] = UpdateLeftTns1(Id, Os, A, A0);
[tCL] = MergeLeftEnv1(CL0, AL, A0);   %Env1_6
CL1 = CL1 + tCL*cf;

cf = cos(theta)^2*sin(theta);
Id = [38,39,42,43,53,57,58,40,44,54];
Os = {Sx,Sx,Sx,Sx,Sx,Sx,Sx,Sz,Sz,Sz};
[AL] = UpdateLeftTns1(Id, Os, A, A0);
[tCL] = MergeLeftEnv1(CL0, AL, A0);   %Env1_7
CL1 = CL1 + tCL*cf;

cf = -cos(theta)^2*sin(theta);
Id = [41,43,53,57,58,38,42,40,44,54];
Os = {Sx,Sx,Sx,Sx,Sx,Sy,Sy,Sz,Sz,Sz};
[AL] = UpdateLeftTns1(Id, Os, A, A0);
[tCL] = MergeLeftEnv1(CL0, AL, A0);   %Env1_8
CL1 = CL1 + tCL*cf;                      %CL1(37-43)(52-53-56-57)

clear CL0;

Id = [59,60,62,72];
Os = {Sx,Sz,Sz,Sz};
[AL] = UpdateLeftTns2(Id, Os, A, A0);
[CL1] = MergeLeftEnv2(CL1, AL, A0);   %Env2_1, CL2(58-59-61-71)

cf = sin(theta)^2;
Id = [63];
Os = {Sy};
[AL] = UpdateLeftTns3(Id, Os, A, A0);
[CL2_1] = MergeLeftEnv3(CL1, AL, A0)*cf;   %Env3_1, CL3(62-63-64), CL3_1: [sin(theta)^2*Y_62 + cos(theta)sin(theta)X_62 X_63 Z_64]

cf = cos(theta)*sin(theta);
Id = [63,64,65];
Os = {Sx,Sx,Sz};
[AL] = UpdateLeftTns3(Id, Os, A, A0);
[tCL] = MergeLeftEnv3(CL1, AL, A0);   %Env3_2
CL2_1 = CL2_1 + tCL*cf;

cf = cos(theta)*sin(theta);
Id = [63];
Os = {Sx};
[AL] = UpdateLeftTns3(Id, Os, A, A0);
[CL2_2] = MergeLeftEnv3(CL1, AL, A0)*cf;   %Env3_1, CL3(62-63-64), CL3_2: [cos(theta)sin(theta)*X_62 - cos(theta)^2 X_63 Y_62 Z_64]

cf = -cos(theta)^2;
Id = [64,63,65];
Os = {Sx,Sy,Sz};
[AL] = UpdateLeftTns3(Id, Os, A, A0);
[tCL] = MergeLeftEnv3(CL1, AL, A0);   %Env3_2
CL2_2 = CL2_2 + tCL*cf;

clear CL1;
%% Merge Right Env1_1
[CR0_1] = GetRightEnv(A0, A0, 1);        % with Z98

cf = -cos(theta)*sin(theta);
Id = [76,91];
Os = {Sz,Sz};
[AR] = UpdateRightTns1(Id, Os, A, A0);
[CR1_1] = MergeRightEnv1(CR0_1, AR, A0)*cf;   %Env1_1(76-75-90-94)

cf = sin(theta)^2;
Id = [76,77];
Os = {Sy,Sz};
[AR] = UpdateRightTns1(Id, Os, A, A0);
[tCR] = MergeRightEnv1(CR0_1, AR, A0);   %Env1_2(76-75-90-94)
CR1_1 = CR1_1 + tCR*cf;

cf = -cos(theta)^2;
Id = [91,95];
Os = {Sy,Sz};
[AR] = UpdateRightTns1(Id, Os, A, A0);
[tCR] = MergeRightEnv1(CR0_1, AR, A0);   %Env1_3(76-75-90-94)
CR1_1 = CR1_1 + tCR*cf;

cf = cos(theta)*sin(theta);
Id = [76,91,77,95];
Os = {Sx,Sx,Sz,Sz};
[AR] = UpdateRightTns1(Id, Os, A, A0);
[tCR] = MergeRightEnv1(CR0_1, AR, A0);   %Env1_4(76-75-90-94)
CR1_1 = CR1_1 + tCR*cf;

clear CR0_1;
%% Merge Right Env2_1
cf = -cos(theta)*sin(theta);
Id = [80,92,79];
Os = {Sx,Sx,Sz};
[AR] = UpdateRightTns2(Id, Os, A, A0);
[CR2_1] = MergeRightEnv2(CR1_1, AR, A0)*cf;   %Env2_1, CR2_1: [ -cos(theta)*sin(theta) X_79 X_91 Z_78 ]

cf = cos(theta)^2;
Id = [81,92,80,79,82];
Os = {Sx,Sx,Sy,Sz,Sz};
[AR] = UpdateRightTns2(Id, Os, A, A0);
[tCR] = MergeRightEnv2(CR1_1, AR, A0);   %Env2_2, CR2_1: [ cos(theta)^2 X_80 X_91 Y_79 Z_78 Z_81 ]
CR2_1 = CR2_1 + tCR*cf;

[NormM1] = MergeCLCR(CL2_1, CR2_1, A0, A0, -1)

clear CR2_1;
%% Merge Right Env2_2
cf = -cos(theta)*sin(theta);
Id = [80,92,79,82];
Os = {Sx,Sx,Sz,Sz};
[AR] = UpdateRightTns2(Id, Os, A, A0);
[CR2_2] = MergeRightEnv2(CR1_1, AR, A0)*cf;   %Env2_1, CR2_2: [ -cos(theta)*sin(theta) X_79 X_91 Z_78 Z_81 ]

cf = cos(theta)^2;
Id = [81,92,80,79];
Os = {Sx,Sx,Sy,Sz};
[AR] = UpdateRightTns2(Id, Os, A, A0);
[tCR] = MergeRightEnv2(CR1_1, AR, A0);   %Env2_2, CR2_1: [ cos(theta)^2 X_80 X_91 Y_79 Z_78 ]
CR2_2 = CR2_2 + tCR*cf;

[NormM2] = MergeCLCR(CL2_2, CR2_2, A0, A0,  1)

clear CR1_1 CR2_2;
%% Merge Right Env1_2
[CR0_2] = GetRightEnv(A0, A0,-1);        % without Z98

cf = -cos(theta)*sin(theta);
Id = [76,91];
Os = {Sz,Sz};
[AR] = UpdateRightTns1(Id, Os, A, A0);
[CR1_2] = MergeRightEnv1(CR0_2, AR, A0)*cf;   %Env1_1(76-75-90-94)

cf = sin(theta)^2;
Id = [76,77];
Os = {Sy,Sz};
[AR] = UpdateRightTns1(Id, Os, A, A0);
[tCR] = MergeRightEnv1(CR0_2, AR, A0);   %Env1_2(76-75-90-94)
CR1_2 = CR1_2 + tCR*cf;

cf = -cos(theta)^2;
Id = [91,95];
Os = {Sy,Sz};
[AR] = UpdateRightTns1(Id, Os, A, A0);
[tCR] = MergeRightEnv1(CR0_2, AR, A0);   %Env1_3(76-75-90-94)
CR1_2 = CR1_2 + tCR*cf;

cf = cos(theta)*sin(theta);
Id = [76,91,77,95];
Os = {Sx,Sx,Sz,Sz};
[AR] = UpdateRightTns1(Id, Os, A, A0);
[tCR] = MergeRightEnv1(CR0_2, AR, A0);   %Env1_4(76-75-90-94)
CR1_2 = CR1_2 + tCR*cf;

clear CR0_2;
%% Merge Right Env2_3
cf = cos(theta)*sin(theta);
Id = [80,81,79,82];
Os = {Sx,Sx,Sz,Sz};
[AR] = UpdateRightTns2(Id, Os, A, A0);
[CR2_3] = MergeRightEnv2(CR1_2, AR, A0)*cf;   %Env2_1, CR2_2: [ -cos(theta)*sin(theta) X_79 X_91 Z_78 Z_81 ]

cf = sin(theta)^2;
Id = [80,79];
Os = {Sy,Sz};
[AR] = UpdateRightTns2(Id, Os, A, A0);
[tCR] = MergeRightEnv2(CR1_2, AR, A0);   %Env2_2, CR2_1: [ cos(theta)^2 X_80 X_91 Y_79 Z_78 ]
CR2_3 = CR2_3 + tCR*cf;

[NormM3] = MergeCLCR(CL2_1, CR2_3, A0, A0, -1)

clear CL2_1 CR2_3;
%% Merge Right Env2_4
cf = cos(theta)*sin(theta);
Id = [80,81,79];
Os = {Sx,Sx,Sz};
[AR] = UpdateRightTns2(Id, Os, A, A0);
[CR2_4] = MergeRightEnv2(CR1_2, AR, A0)*cf;   %Env2_1, CR2_2: [ -cos(theta)*sin(theta) X_79 X_91 Z_78 Z_81 ]

cf = sin(theta)^2;
Id = [80,79,82];
Os = {Sy,Sz,Sz};
[AR] = UpdateRightTns2(Id, Os, A, A0);
[tCR] = MergeRightEnv2(CR1_2, AR, A0);   %Env2_2, CR2_1: [ cos(theta)^2 X_80 X_91 Y_79 Z_78 ]
CR2_4 = CR2_4 + tCR*cf;

clear CR1_2;

[NormM4] = MergeCLCR(CL2_2, CR2_4, A0, A0,  1)

clear CL2_2 CR2_4;

NormM = NormM1 + NormM2 - NormM3 - NormM4
end

function [CL] = GetLeftEnv(A, B)
%   A[2][0] = A4                % A[2][0]: 49-48-47
%   A[2][1] = A2                % A[2][1]: 55
%   A[2][2] = A2                % A[2][2]: 46
%   A[2][3] = A4                % A[2][3]: 45-44-43
%   A[2][4] = A2                % A[2][4]: 54
%   A[2][5] = A2                % A[2][5]: 42
%   A[2][6] = A4                % A[2][6]: 41-40-39
%   A[2][7] = A2                % A[2][7]: 53
%   A[2][8] = A2_5              % A[2][8]: 38-37-52-56-57

[CL] = LeftMove1st(A, B);
[CL] = SmallMem_LeftMoveOdd(2, CL, A, B);

Da = size(A{3,1},2);
Db = size(B{3,1},2);
D2 = Da*Db;
CL = reshape(CL, [Db, Da, Db, Da, D2, D2]);
for i = 1 : D2
    tmp = ncon({CL(:,:,:,:,:,i), conj(B{3,1}), A{3,1}}, {[1,3,2,4,-5], [5,1,2,-1,-3], [5,3,4,-2,-4]}, [1,2,3,4,5]);
	CL(:,:,:,:,:,i) = ncon({tmp, conj(B{3,2}), A{3,2}, conj(B{3,3}), A{3,3}}, ...
     				  {[1,2,4,5,-5], [3,1,-1], [3,2,-2], [6,4,-3], [6,5,-4]}, [1,2,3,4,5,6]);
end

end

function [NormM] = MergeCLCR(CL, CR, A, B, X72)
% A{4,1}: 69-70-74-89-88
% A{4,2}: 66-67-68
% A{4,3}: 73
% A{4,4}: 65
% A{4,6}: 72

Da = size(A{5,2},2);
Db = size(B{5,2},2);
D2 = Da*Db;

Sx = [0.0, 1.0; 1.0, 0.0];
if( X72 > 0 )    % X operator acts on site-72 
	tmp = A{4,6};
	D = size(tmp,2);
	tmp = reshape(tmp, [2,D^2]);
	A{4,6} = reshape(Sx*tmp, [2,D,D]);
end

for i = 1 : D2	
	CL(:,:,:,:,:,i) = ncon({CL(:,:,:,:,:,i), conj(B{4,4}), A{4,4}, conj(B{4,6}), A{4,6}}, ...
    				  {[-1,1,2,4,5], [3,1,-2], [3,2,-3], [6,4,-4], [6,5,-5]}, [4,5,6,1,2,3]);
end

CL = reshape(CL, [Db, Da, Db, Da, D2, D2]);
for i = 1 : D2
	CL(:,:,:,:,:,i) = ncon({CL(:,:,:,:,:,i), conj(B{4,2}), A{4,2}, conj(B{4,3}), A{4,3}}, ...
     				  {[1,3,2,4,-5], [5,1,2,-1,6], [5,3,4,-2,7], [8,6,-3], [8,7,-4]}, [1,2,3,4,5,6,7,8]);
end
CL = reshape(CL, [D2, D2*D2*D2]);
C5 = reshape(ncon({conj(B{4,1}), A{4,1}}, {[1,-3,-1], [1,-4,-2]}, [1]),[D2,D2]);
CL = C5 * CL;

CR = reshape(CR, [Db, Da, Db, Da, D2, D2]);
for i = 1 : D2
    CR(:,:,:,:,:,i) = ncon({CR(:,:,:,:,:,i), conj(B{5,2}), A{5,2}, conj(B{5,3}), A{5,3}}, ...
                      {[1,2,4,5,-5], [3,-1,1], [3,-2,2], [6,-3,4], [6,-4,5]}, [1,2,3,4,5,6]);
    CR(:,:,:,:,:,i) = ncon({CR(:,:,:,:,:,i), conj(B{5,1}), A{5,1}}, {[1,3,2,4,-5], [5,-1,-3,1,2], [5,-2,-4,3,4]}, [1,2,3,4,5]);
end
CL = reshape(CL, [1, D2*D2*D2*D2]);
CR = reshape(CR, [D2*D2*D2*D2, 1]);
NormM = CL*CR;

end

function [CL] = MergeLeftEnv1(CL, A, B)

tic;
Da = size(A{4,3},2);
Db = size(B{4,3},2);
D2 = Da*Db;

CL = reshape(CL, [D2, Db, Da, Db, Da, D2]);
for i = 1 : D2
    CL(:,:,:,:,:,i) = ncon({CL(:,:,:,:,:,i), conj(B{3,4}), A{3,4}}, {[-1,1,3,2,4], [5,1,2,-2,-4], [5,3,4,-3,-5]}, [1,2,3,4,5]);
	CL(:,:,:,:,:,i) = ncon({CL(:,:,:,:,:,i), conj(B{3,5}), A{3,5}, conj(B{3,6}), A{3,6}}, ...
     				  {[-1,1,2,4,5], [3,1,-2], [3,2,-3], [6,4,-4], [6,5,-5]}, [4,5,6,1,2,3]);
end

CL = reshape(CL, [D2, D2, Db, Da, Db, Da]);
for i = 1 : D2
	tmp = ncon({squeeze(CL(i,:,:,:,:,:)), conj(B{3,7}), A{3,7}, conj(B{3,8}), A{3,8}}, ...
     	  {[-1,1,3,2,4], [5,1,2,6,-4], [5,3,4,7,-5], [8,6,-2], [8,7,-3]}, [1,2,3,4,5,6,7,8]);
    CL(i,:,:,:,:,:) = reshape(tmp, [1, D2, Db, Da, Db, Da]);
end
CL = reshape(CL, [D2*D2*D2,D2]);
C5 = reshape(ncon({conj(B{3,9}), A{3,9}}, {[1,-1,-3], [1,-2,-4]}, [1]),[D2,D2]);
CL = CL * C5;
toc;

end

function [CL] = MergeLeftEnv2(CL, A, B)
% A{4,7}: 61
% A{4,8}: 58-59-60
% A{4,9}: 71


tic;
Da = size(A{4,3},2);
Db = size(B{4,3},2);
D2 = Da*Db;

CL = reshape(CL, [D2, D2, Db, Da, Db, Da]);
for i = 1 : D2
    tmp = ncon({squeeze(CL(i,:,:,:,:,:)), conj(B{4,8}), A{4,8}}, {[-1,1,3,2,4], [5,1,2,-2,-4], [5,3,4,-3,-5]}, [1,2,3,4,5]);
	tmp = ncon({tmp, conj(B{4,7}), A{4,7}, conj(B{4,9}), A{4,9}}, ...
     	       {[-1,1,2,4,5], [3,1,-2], [3,2,-3], [6,4,-4], [6,5,-5]}, [4,5,6,1,2,3]);
    CL(i,:,:,:,:,:) = reshape(tmp, [1, D2, Db, Da, Db, Da]);    
end
toc;

end

function [CL] = MergeLeftEnv3(CL, A, B)
% A{4,5}: 62-63-64

tic;
Da = size(A{4,3},2);
Db = size(B{4,3},2);
D2 = Da*Db;

CL = reshape(CL, [D2, Db, Da, Db, Da, D2]);
CL = reshape(CL, [D2, Db, Da, Db, Da, D2]);
for i = 1 : D2
	CL(:,:,:,:,:,i) = ncon({CL(:,:,:,:,:,i), conj(B{4,5}), A{4,5}},...
                           {[-1,1,3,2,4], [5,1,2,-2,-4], [5,3,4,-3,-5]}, [1,2,3,4,5]);
end

end

function [CR] = GetRightEnv(A, B, Z98)

[CR] = RightMove1st(A, B);

Sz = [1.0, 0.0; 0.0,-1.0];
if( Z98 > 0 )  % Z operator acts on site-98
	tmp = A{6,8};
	D = size(tmp,2);
	tmp = reshape(tmp, [2,4*D^4]);
	A{6,8} = reshape(Sz*tmp, [2^3,D,D,D,D]);
end

[CR] = SmallMem_RightMoveOdd(6, CR, A, B);

end

function [CR] = MergeRightEnv1(CR, A, B)
% A{5,9}: 76-75-90-94-95

tic;
Da = size(A{5,2},2);
Db = size(B{5,2},2);
D2 = Da*Db;
CR = reshape(CR, [D2*D2*D2, D2]);
C5 = reshape(ncon({conj(B{5,9}), A{5,9}}, {[1,-3,-1], [1,-4,-2]}, [1]),[D2,D2]);          
CR = CR*C5;
toc;

end

function [CR] = MergeRightEnv2(CR, A, B)
% A{5,4}: 81-82-83
% A{5,5}: 92
% A{5,6}: 80
% A{5,7}: 77-78-79
% A{5,8}: 91

tic;
Da = size(A{5,2},2);
Db = size(B{5,2},2);
D2 = Da*Db;

CR = reshape(CR, [D2, D2, Db, Da, Db, Da]);
for i = 1 : D2
    tmp = ncon({squeeze(CR(i,:,:,:,:,:)), conj(B{5,7}), A{5,7}, conj(B{5,8}), A{5,8}},...
          {[-1,3,5,6,7], [8,-2,-4,2,6], [8,-3,-5,4,7], [1,2,3], [1,4,5]}, [3,5,1,2,6,4,7,8]);
    CR(i,:,:,:,:,:) = reshape(tmp, [1, D2, Db, Da, Db, Da]);
end

CR = reshape(CR, [D2, Db, Da, Db, Da, D2]);
for i = 1 : D2    
    CR(:,:,:,:,:,i) = ncon({CR(:,:,:,:,:,i), conj(B{5,5}), A{5,5}, conj(B{5,6}), A{5,6}}, ...
                      {[-1,1,2,4,5], [3,-2,1], [3,-3,2], [6,-4,4], [6,-5,5]}, [1,2,3,4,5,6]);
    CR(:,:,:,:,:,i) = ncon({CR(:,:,:,:,:,i), conj(B{5,4}), A{5,4}}, {[-1,1,3,2,4], [5,-2,-4,1,2], [5,-3,-5,3,4]}, [1,2,3,4,5]);
end
toc;

end

function [AL] = UpdateLeftTns1(Id, Os, A, Ac)

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
AL = Ac;

AL{3,4} = reshape(ncon({A{46}, A{44}, A{45}}, {[-1,1,-4,-6], [-3,2,-5,-7], ...
          [-2,1,2]}, [1,2]),[2^3,D,D,D,D]);                                              % A{2,3}: 45-44-43
AL{3,6} = A{43};                                                                          % A{2,5}: 42
AL{3,7} = reshape(ncon({A{42}, A{40}, A{41}}, {[-1,1,-4,-6], [-3,2,-5,-7], ...
          [-2,1,2]}, [1,2]),[2^3,D,D,D,D]);                                               % A{2,6}: 41-40-39
AL{3,8} = A{54};                                                                          % A{2,7}: 53
AL{3,9} = reshape(ncon({A{39}, A{38}, A{53}, A{57}, A{58}}, {[-1,-6,1], [-2,1,2], ...
          [-3,2,3], [-4,3,4], [-5,4,-7]}, [1,2,4,3]),[2^5,D,D]);                          % A{2,8}: 38-37-52-56-57

end

function [AL] = UpdateLeftTns2(Id, Os, A, Ac)

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
AL = Ac;

AL{4,7} = A{62};                                                                          % A{3,6}: 61
AL{4,8} = reshape(ncon({A{61}, A{59}, A{60}}, {[-1,1,-4,-6], [-3,2,-5,-7], ...
          [-2,1,2]}, [1,2]),[2^3,D,D,D,D]);                                               % A{3,7}: 60-59-58
AL{4,9} = A{72};                                                                          % A{3,8}: 71

end

function [AL] = UpdateLeftTns3(Id, Os, A, Ac)

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
AL = Ac;

AL{4,5} = reshape(ncon({A{65}, A{63}, A{64}}, {[-1,1,-4,-6], [-3,2,-5,-7], ...
          [-2,1,2]}, [1,2]),[2^3,D,D,D,D]);                                               % A{3,4}: 64-63-62
AL{4,6} = A{73};                                                                          % A{3,5}: 72

end

function [AR] = UpdateRightTns1(Id, Os, A, Ac)

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
AR = Ac;
AR{5,9} = reshape(ncon({A{77}, A{76}, A{91}, A{95}, A{96}}, {[-1,-6,1], [-2,1,2], ...
          [-3,2,3], [-4,3,4], [-5,4,-7]}, [1,2,4,3]),[2^5,D,D]);                          % A{4,8}: 76-75-90-94-95

end

function [AR] = UpdateRightTns2(Id, Os, A, Ac)

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
AR = Ac;

AR{5,4} = reshape(ncon({A{84}, A{82}, A{83}}, {[-1,1,-4,-6], [-3,2,-5,-7], ...
          [-2,1,2]}, [1,2]),[2^3,D,D,D,D]);                                               % A{4,3}: 83-82-81
AR{5,6} = A{81};                                                                          % A{4,5}: 80
AR{5,7} = reshape(ncon({A{80}, A{78}, A{79}}, {[-1,1,-4,-6], [-3,2,-5,-7], ...
          [-2,1,2]}, [1,2]),[2^3,D,D,D,D]);                                               % A{4,6}: 79-78-77
AR{5,8} = A{92};                                                                          % A{4,7}: 91

end
