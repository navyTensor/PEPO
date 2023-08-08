function [NormM] = Get_Fig3c_Weight17(A, theta)

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

[Ac] = InitColTensor(A);
% [CL] = LeftMove1st(Ac, Ac);
% [CL] = LeftMoveOdd(2, CL, Ac, Ac);
% [CL] = LeftMoveEvn(3, CL, Ac, Ac);
% [CL] = LeftMoveOdd(4, CL, Ac, Ac);
% [CL] = LeftMoveEvn(5, CL, Ac, Ac);
% [CL] = LeftMoveOdd(6, CL, Ac, Ac);
% [Norm0] = LeftMoveLst(CL, Ac, Ac)

[CL] = LeftMove1st(Ac, Ac);
[CL] = SmallMem_LeftMoveOdd(2, CL, Ac, Ac);
[CL] = SmallMem_LeftMoveEvn(3, CL, Ac, Ac);
[CL] = SmallMem_LeftMoveOdd(4, CL, Ac, Ac);
[CL] = SmallMem_LeftMoveEvn(5, CL, Ac, Ac);
[CL] = SmallMem_LeftMoveOdd(6, CL, Ac, Ac);
[Norm0] = LeftMoveLst(CL, Ac, Ac)

clear CL;

NormM1 = Get_Fig3c_Weight17_Part1(A, theta)
NormM2 = Get_Fig3c_Weight17_Part2(A, theta)

NormM = NormM1 + NormM2
NormM/Norm0

end