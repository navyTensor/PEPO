function [CL, Coef] = FoldedLeftMove35(ix, CL, A)
%%  contract even column: 3, 5

if( ix == 3 )
    Id = [50,49,48,56,47,46,45,44,55,43,42,41,40,54,39,38,53,57,58];
elseif( ix == 5 )
    Id = [88,87,86,94,85,84,83,82,93,81,80,79,78,92,77,76,91,95,96];
end

Ht = ncon({A{Id(1)}, A{Id(2)}, A{Id(3)}, A{Id(4)}, A{Id(5)}}, {[1,-1,3], [1,2], [2,-2,4], [3,-3], [4,-4]}, [3,1,4,2]);     % H3: 22-21-20-23-33
tCoef = max(abs(Ht(:)));
Ht = Ht/tCoef;
Coef = log(tCoef);

CL = ncon({CL, Ht}, {[1,2,-3,-4], [1,2,-1,-2]}, [1,2]);
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

Ht = ncon({A{Id(11)}, A{Id(12)}, A{Id(13)}, A{Id(14)}, C5}, {[1,-1,3], [1,2], [2,-2,4], [3,-3], [4,-4]}, [3,1,4,2]);     % H3: 22-21-20-23-33
tCoef = max(abs(Ht(:)));
Ht = Ht/tCoef;
Coef = Coef + log(tCoef);

CL = ncon({CL, Ht}, {[-1,-2,1,2], [1,2,-3,-4]}, [1,2]);
tCoef = max(abs(CL(:)));
CL = CL/tCoef;
Coef = Coef + log(tCoef);
    
end
