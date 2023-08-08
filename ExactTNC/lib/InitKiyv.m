function [A, T] = InitKiyv(theta, depth)
% A[m,u,l,d,r]

[Uz, Rzz] = GetRzz(-0.5*pi);

Rx = GetRx(theta);
I0 = [1.0; 0.0];
T = cell(1,3);
T{1} = ncon({Uz, Rx}, {[-1,1,-3], [1,-2]}, [1]);                        % T1[m,m',a]                           c
T{2} = ncon({Uz, Uz, Rx}, {[-1,1,-3], [1,2,-4], [2,-2]}, [2,1]);        % T2[m,m',a,b]  --a--T2--b--           |
T{3} = ncon({Uz, Uz, Uz, Rx}, {[-1,1,-3], [1,2,-4], [2,3,-5], [3,-2]}, [3,2,1]);     % T3[m,m',a,b,c]     --a--T3--b--

A1 = reshape(ncon({T{1},I0}, {[-2,1,-3], [1,-1]}, [1]),[2,2]);            % A1[m,a]
A2 = reshape(ncon({T{2},I0}, {[-2,1,-3,-4], [1,-1]}, [1]),[2,2,2]);       % A2[m,a,b]
A3 = reshape(ncon({T{3},I0}, {[-2,1,-3,-4,-5], [1,-1]}, [1]),[2,2,2,2]);  % A3[m,a,b,c]

for i = 2 : depth
    Da = 2^i;
    A1 = reshape(ncon({T{1}, A1}, {[-1,1,-2], [1,-3]}, [1]),[2,Da]);                     % A1[m,a]
    A2 = reshape(ncon({T{2}, A2}, {[-1,1,-2,-4], [1,-3,-5]}, [1]),[2,Da,Da]);            % A2[m,a,b]
    A3 = reshape(ncon({T{3}, A3}, {[-1,1,-2,-4,-6], [1,-3,-5,-7]}, [1]),[2,Da,Da,Da]);   % A3[m,a,b,c]
end
   
A = cell(1,127);
for i = [13,113]
    A{i+1} = A1;
end
for i = [0,1,2,3,5,6,7,9,10,11,14,15,16,17,18,19,21,23,25,27,29,31,32,33,34,35,36,...
        37,38,40,42,44,46,48,50,51,52,53,54,55,56,57,59,61,63,65,67,69,70,71,72,73,74,...
        75,76,78,80,82,84,86,88,89,90,91,92,93,94,95,97,99,101,103,105,107,108,109,110,...
        111,112,115,116,117,119,120,121,123,124,125,126]
    A{i+1} = A2;
end
for i = [4,8,12,20,22,24,26,28,30,39,41,43,45,47,49,58,60,62,64,66,68,77,79,81,83,85,87,96,98,100,102,104,106,114,118,122]
    A{i+1} = A3;
end

end