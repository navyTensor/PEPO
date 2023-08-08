function [CL, Coef] = FoldedLeftMove35_SmallMem(ix, CL0, A)
%%  contract even column: 3, 5

if( ix == 3 )
    Id = [50,49,48,56,47,46,45,44,55,43,42,41,40,54,39,38,53,57,58];
elseif( ix == 5 )
    Id = [88,87,86,94,85,84,83,82,93,81,80,79,78,92,77,76,91,95,96];
end

Hu = ncon({A{Id(1)}, A{Id(2)}, A{Id(4)}}, {[1,-1,2], [1,-3], [2,-2]}, [1,2]);
Hd = ncon({A{Id(3)}, A{Id(5)}}, {[-3,-1,1], [1,-2]});
CL = ncon({CL0, Hu(:,:,1), Hd(:,:,1)}, {[1,2,-3,-4], [1,-1], [2,-2]}, [1,2]);
tCoef = max(abs(CL(:)));
CL = CL/tCoef;
Coef = log(tCoef);
for i = 2 : size(Hd,3)
    CL = CL + ncon({CL0, Hu(:,:,i), Hd(:,:,i)}, {[1,2,-3,-4], [1,-1], [2,-2]}, [1,2]);
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
Hu = ncon({A{Id(11)}, A{Id(12)}, A{Id(14)}}, {[1,-1,2], [1,-3], [2,-2]}, [1,2]);
Hd = ncon({A{Id(13)}, C5}, {[-3,-1,1], [1,-2]});
CL = ncon({CL0, Hu(:,:,1), Hd(:,:,1)}, {[-1,-2,1,2], [1,-3], [2,-4]}, [1,2]);
tCoef = max(abs(CL(:)));
CL = CL/tCoef;
Coef = Coef + log(tCoef);
for i = 2 : size(Hd,3)
    CL = CL + ncon({CL0, Hu(:,:,i), Hd(:,:,i)}, {[-1,-2,1,2], [1,-3], [2,-4]}, [1,2]);
    tCoef = max(abs(CL(:)));
    CL = CL/tCoef;
    Coef = Coef + log(tCoef);
end

end
