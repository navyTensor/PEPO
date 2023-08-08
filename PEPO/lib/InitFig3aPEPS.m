function [A, EvoX, EvoZ] = InitFig3aPEPS(isite, theta, depth)
% A[m,u,l,d,r], Uz = (Rz)^{+}, Ux = (Rx)^{+}
% Ostring = X_{13,29,31}Y_{9,30}Z_{8,12,17,28,32}
% <0|(UxUz)^5 (Ostring) (RzRx)^5|0> = <0|Ux(UzUx)^4 Uz(Ostring)Rz (RxRz)^4 Rx|0> 

[Uz, Rzz] = GetRzz(-0.5*pi);
Rx = GetRx(theta);

Rzz = reshape(Rzz, [2,2,2,2]);
EvoZ = permute(MatKron(conj(Rzz), Rzz), [3,4,1,2]);
EvoX = MatKron(conj(Rx), Rx).';

T0 = cell(3,1);
T0{1} = permute(Uz, [2,1,3]);                 
T0{2} = ncon({Uz, Uz}, {[1,-1,-3], [-2,1,-4]});
T0{3} = ncon({Uz, Uz, Uz}, {[1,-1,-3], [2,1,-4], [-2,2,-5]}, [1,2]);

T = cell(3,1);
T{1} = ncon({Uz, Rx}, {[1,-1,-3], [-2,1]}, [1]);                        % T1[m,m',a]                           c
T{2} = ncon({Uz, Uz, Rx}, {[1,-1,-3], [2,1,-4], [-2,2]}, [2,1]);        % T2[m,m',a,b]  --a--T2--b--           |
T{3} = ncon({Uz, Uz, Uz, Rx}, {[1,-1,-3], [2,1,-4], [3,2,-5], [-2,3]}, [3,1,2]);     % T3[m,m',a,b,c]     --a--T3--b--

Sx = [0.0, 1.0; 1.0, 0.0];
Sy = [0.0,-1.j; 1.j, 0.0];
Sz = [1.0, 0.0; 0.0,-1.0];
Ad1 = reshape(ncon({conj(T0{1}),T0{1}}, {[-1,1,-3], [-2,1,-4]}, [1]),[4,4]);                       % Ad1[m,a]
Ad2 = reshape(ncon({conj(T0{2}),T0{2}}, {[-1,1,-3,-5], [-2,1,-4,-6]}, [1]),[4,4,4]);               % Ad2[m,a,b]
Ad3 = reshape(ncon({conj(T0{3}),T0{3}}, {[-1,1,-3,-5,-7], [-2,1,-4,-6,-8]}, [1]),[4,4,4,4]);       % Ad3[m,a,b,c]

Zd1 = reshape(ncon({conj(T0{1}),T0{1}, Sz}, {[-1,1,-3], [-2,2,-4], [1,2]}, [1,2]),[4,4]);
Zd2 = reshape(ncon({conj(T0{2}),T0{2}, Sz}, {[-1,1,-3,-5], [-2,2,-4,-6], [1,2]}, [1,2]),[4,4,4]);               % Ad2[m,a,b]
Zd3 = reshape(ncon({conj(T0{3}),T0{3}, Sz}, {[-1,1,-3,-5,-7], [-2,2,-4,-6,-8], [1,2]}, [1,2]),[4,4,4,4]);

Td = cell(3,1);
Td{1} = MatKron(conj(T{1}), T{1});
Td{2} = MatKron(conj(T{2}), T{2});
Td{3} = MatKron(conj(T{3}), T{3});

for i = 2 : depth
    Da = 4^i;
    Ad1 = reshape(ncon({Td{1}, Ad1}, {[-1,1,-2], [1,-3]}),[4,Da]);                     % A1[m,a]
    Ad2 = reshape(ncon({Td{2}, Ad2}, {[-1,1,-2,-4], [1,-3,-5]}),[4,Da,Da]);            % A2[m,a,b]
    Ad3 = reshape(ncon({Td{3}, Ad3}, {[-1,1,-2,-4,-6], [1,-3,-5,-7]}),[4,Da,Da,Da]);   % A3[m,a,b,c]

    Zd1 = reshape(ncon({Td{1}, Zd1}, {[-1,1,-2], [1,-3]}),[4,Da]);                     % A1[m,a]
    Zd2 = reshape(ncon({Td{2}, Zd2}, {[-1,1,-2,-4], [1,-3,-5]}),[4,Da,Da]);            % A2[m,a,b]
    Zd3 = reshape(ncon({Td{3}, Zd3}, {[-1,1,-2,-4,-6], [1,-3,-5,-7]}),[4,Da,Da,Da]);   % A3[m,a,b,c]
end

A = cell(127,1);
List1 = [13,113];
List2 = [0,1,2,3,5,6,7,9,10,11,14,15,16,17,18,19,21,23,25,27,29,31,32,33,34,35,36,...
        37,38,40,42,44,46,48,50,51,52,53,54,55,56,57,59,61,63,65,67,69,70,71,72,73,...
        74,75,76,78,80,82,84,86,88,89,90,91,92,93,94,95,97,99,101,103,105,107,108,...
        109,110,111,112,115,116,117,119,120,121,123,124,125,126];
List3 = [4,8,12,20,22,24,26,28,30,39,41,43,45,47,49,58,60,62,64,66,68,77,79,81,83,85,87,96,98,100,102,104,106,114,118,122];

for i = List1
    A{i+1} = Ad1;
end

for i = List2
    A{i+1} = Ad2;
end

for i = List3
    A{i+1} = Ad3;
end

NoSet1 = find(List1==isite, 1);
NoSet2 = find(List2==isite, 1);
NoSet3 = find(List3==isite, 1);
if( ~isempty(NoSet1) )
    A{isite+1} = Zd1;
elseif( ~isempty(NoSet2) )
    A{isite+1} = Zd2;
elseif( ~isempty(NoSet3) )
    A{isite+1} = Zd3;
end

end

