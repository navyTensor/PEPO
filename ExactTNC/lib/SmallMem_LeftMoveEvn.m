function [CL] = SmallMem_LeftMoveEvn(ix, CL, A, B)
%%  contract odd column: 2, 4
%   A[2][0] = A4                % A[2][0]: 49-48-47
%   A[2][1] = A2                % A[2][1]: 55
%   A[2][2] = A2                % A[2][2]: 46
%   A[2][3] = A4                % A[2][3]: 45-44-43
%   A[2][4] = A2                % A[2][4]: 54
%   A[2][5] = A2                % A[2][5]: 42
%   A[2][6] = A4                % A[2][6]: 41-40-39
%   A[2][7] = A2                % A[2][7]: 53
%   A[2][8] = A2_5              % A[2][8]: 38-37-52-56-57
    
Da = size(A{ix,1},2);
Db = size(B{ix,1},2);
D2 = Da*Db;
CL = reshape(CL, [Db, Da, Db, Da, D2, D2]);
for i = 1 : D2
    tmp = ncon({CL(:,:,:,:,:,i), conj(B{ix,1}), A{ix,1}}, {[1,3,2,4,-5], [5,1,2,-1,-3], [5,3,4,-2,-4]}, [1,2,3,4,5]);
	CL(:,:,:,:,:,i) = ncon({tmp, conj(B{ix,2}), A{ix,2}, conj(B{ix,3}), A{ix,3}}, ...
     				  {[1,2,4,5,-5], [3,1,-1], [3,2,-2], [6,4,-3], [6,5,-4]}, [1,2,3,4,5,6]);
end

CL = reshape(CL, [D2, Db, Da, Db, Da, D2]);
for i = 1 : D2
    tmp = ncon({CL(:,:,:,:,:,i), conj(B{ix,4}), A{ix,4}}, {[-1,1,3,2,4], [5,1,2,-2,-4], [5,3,4,-3,-5]}, [1,2,3,4,5]);
	CL(:,:,:,:,:,i) = ncon({tmp, conj(B{ix,5}), A{ix,5}, conj(B{ix,6}), A{ix,6}}, ...
     				  {[-1,1,2,4,5], [3,1,-2], [3,2,-3], [6,4,-4], [6,5,-5]}, [4,5,6,1,2,3]);
end

CL = reshape(CL, [D2, D2, Db, Da, Db, Da]);
for i = 1 : D2
	tmp = ncon({squeeze(CL(i,:,:,:,:,:)), conj(B{ix,7}), A{ix,7}, conj(B{ix,8}), A{ix,8}}, ...
     	  {[-1,1,3,2,4], [5,1,2,6,-4], [5,3,4,7,-5], [8,6,-2], [8,7,-3]}, [1,2,3,4,5,6,7,8]);
    CL(i,:,:,:,:,:) = reshape(tmp, [1, D2, Db, Da, Db, Da]);
end
CL = reshape(CL, [D2*D2*D2,D2]);
C5 = reshape(ncon({conj(B{ix,9}), A{ix,9}}, {[1,-1,-3], [1,-2,-4]}, [1]),[D2,D2]);
CL = CL * C5;

end
