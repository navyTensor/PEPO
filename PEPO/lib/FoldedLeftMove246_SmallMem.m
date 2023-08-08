function [CL, Coef] = FoldedLeftMove246_SmallMem(ix, CL0, A)
%%  contract even column: 1, 3, 5

if( ix == 2 )
    Id = [23,22,21,24,34,27,26,25,28,35,31,30,29,36,32,33,37,52,51];
elseif( ix == 4 )
    Id = [61,60,59,62,72,65,64,63,66,73,69,68,67,74,70,71,75,90,89];
elseif( ix == 6 )
    Id = [99,98,97,100,110,103,102,101,104,111,107,106,105,112,108,109,113,127,126,125,124];
end

Hu = ncon({A{Id(1)}, A{Id(2)}, A{Id(4)}}, {[1,-1,2], [1,-3], [2,-2]}, [1,2]);
Hd = ncon({A{Id(3)}, A{Id(5)}}, {[-3,-1,1], [1,-2]});
CL = ncon({CL0, Hu(:,:,1), Hd(:,:,1)}, {[-1,-2,1,2], [1,-3], [2,-4]}, [1,2]);
tCoef = max(abs(CL(:)));
CL = CL/tCoef;
Coef = log(tCoef);
for i = 2 : size(Hd,3)
    CL = CL + ncon({CL0, Hu(:,:,i), Hd(:,:,i)}, {[-1,-2,1,2], [1,-3], [2,-4]}, [1,2]);
    tCoef = max(abs(CL(:)));
    CL = CL/tCoef;
    Coef = Coef + log(tCoef);
end

Hu = ncon({A{Id(6)}, A{Id(7)}, A{Id(9)}}, {[1,-1,2], [1,-3], [2,-2]}, [1,2]);
Hd = ncon({A{Id(8)}, A{Id(10)}}, {[-3,-1,1], [1,-2]});
CL0 = ncon({CL, Hu(:,:,1), Hd(:,:,1)}, {[-1,1,2,-4], [1,-2], [2,-3]}, [1,2]);
tCoef = max(abs(CL0(:)));
CL0 = CL0/tCoef;
Coef = Coef + log(tCoef);
for i = 2 : size(Hd,3)
    CL0 = CL0 + ncon({CL, Hu(:,:,i), Hd(:,:,i)}, {[-1,1,2,-4], [1,-2], [2,-3]}, [1,2]);
    tCoef = max(abs(CL0(:)));
    CL0 = CL0/tCoef;
    Coef = Coef + log(tCoef);
end

C5 = A{Id(15)};
for i = 16 : numel(Id)
    C5 = C5*A{Id(i)};
end
Hu = ncon({A{Id(11)}, A{Id(12)}, C5}, {[1,-1,2], [1,-3], [2,-2]}, [1,2]);
Hd = ncon({A{Id(13)}, A{Id(14)}}, {[-3,-1,1], [1,-2]});
CL = ncon({CL0, Hu(:,:,1), Hd(:,:,1)}, {[1,2,-3,-4], [1,-1], [2,-2]}, [1,2]);
tCoef = max(abs(CL(:)));
CL = CL/tCoef;
Coef = Coef + log(tCoef);
for i = 2 : size(Hd,3)
    CL = CL + ncon({CL0, Hu(:,:,i), Hd(:,:,i)}, {[1,2,-3,-4], [1,-1], [2,-2]}, [1,2]);
    tCoef = max(abs(CL(:)));
    CL = CL/tCoef;
    Coef = Coef + log(tCoef);
end
    
end
