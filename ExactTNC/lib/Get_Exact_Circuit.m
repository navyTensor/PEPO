function [Norm0] = Get_Exact_Circuit(A) 

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

end
