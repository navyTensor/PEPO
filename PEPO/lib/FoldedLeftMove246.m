function [CL, Coef] = FoldedLeftMove246(ix, CL, A)
%%  contract even column: 1, 3, 5

if( ix == 2 )
    Id = [23,22,21,24,34,27,26,25,28,35,31,30,29,36,32,33,37,52,51];
elseif( ix == 4 )
    Id = [61,60,59,62,72,65,64,63,66,73,69,68,67,74,70,71,75,90,89];
elseif( ix == 6 )
    Id = [99,98,97,100,110,103,102,101,104,111,107,106,105,112,108,109,113,127,126,125,124];
end

Ht = ncon({A{Id(1)}, A{Id(2)}, A{Id(3)}, A{Id(4)}, A{Id(5)}}, {[1,-1,3], [1,2], [2,-2,4], [3,-3], [4,-4]}, [3,1,4,2]);     % H3: 22-21-20-23-33
tCoef = max(abs(Ht(:)));
Ht = Ht/tCoef;
Coef = log(tCoef);

CL = ncon({CL, Ht}, {[-1,-2,1,2], [1,2,-3,-4]}, [1,2]);
tCoef = max(abs(CL(:)));
CL = CL/tCoef;
Coef = Coef + log(tCoef);

Ht = ncon({A{Id(6)}, A{Id(7)}, A{Id(8)}, A{Id(9)}, A{Id(10)}}, {[1,-1,3], [1,2], [2,-2,4], [3,-3], [4,-4]}, [3,1,4,2]);     % H3: 22-21-20-23-33
tCoef = max(abs(Ht(:)));
Ht = Ht/tCoef;
Coef = Coef + log(tCoef);

CL = ncon({CL, Ht}, {[-1,1,2,-4], [1,2,-2,-3]}, [1,2]);
tCoef = max(abs(CL(:)));
CL = CL/tCoef;
Coef = Coef + log(tCoef);

C5 = A{Id(15)};
for i = 16 : numel(Id)
    C5 = C5*A{Id(i)};
end
tCoef = max(abs(C5(:)));
C5 = C5/tCoef;
Coef = Coef + log(tCoef);

Ht = ncon({A{Id(11)}, A{Id(12)}, A{Id(13)}, C5, A{Id(14)}}, {[1,-1,3], [1,2], [2,-2,4], [3,-3], [4,-4]}, [3,1,4,2]);     % H3: 22-21-20-23-33
tCoef = max(abs(Ht(:)));
Ht = Ht/tCoef;
Coef = Coef + log(tCoef);

CL = ncon({CL, Ht}, {[1,2,-3,-4], [1,2,-1,-2]}, [1,2]);
tCoef = max(abs(CL(:)));
CL = CL/tCoef;
Coef = Coef + log(tCoef);
    
end
