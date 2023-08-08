function [CL] = SmallMem_LeftMoveOdd(ix, CL, A, B)
%%  contract even column: 1, 3, 5
%   A[1][0] = A2_5              % A[1][0]: 31-32-36-51-50
%   A[1][1] = A4                % A[1][1]: 30-29-28
%   A[1][2] = A2                % A[1][2]: 35
%   A[1][3] = A2                % A[1][3]: 27
%   A[1][4] = A4                % A[1][4]: 26-25-24
%   A[1][5] = A2                % A[1][5]: 34
%   A[1][6] = A2                % A[1][6]: 23
%   A[1][7] = A4                % A[1][7]: 22-21-20
%   A[1][8] = A2                % A[1][8]: 33

Da = size(A{ix,1},2);
Db = size(B{ix,1},2);
D2 = Da*Db;
CL = reshape(CL, [D2, D2, Db, Da, Db, Da]);
for i = 1 : D2
    tmp = ncon({squeeze(CL(i,:,:,:,:,:)), conj(B{ix,8}), A{ix,8}}, {[-1,1,3,2,4], [5,1,2,-2,-4], [5,3,4,-3,-5]}, [1,2,3,4,5]);
	tmp = ncon({tmp, conj(B{ix,7}), A{ix,7}, conj(B{ix,9}), A{ix,9}}, ...
     	       {[-1,1,2,4,5], [3,1,-2], [3,2,-3], [6,4,-4], [6,5,-5]}, [4,5,6,1,2,3]);
    CL(i,:,:,:,:,:) = reshape(tmp, [1, D2, Db, Da, Db, Da]);    
end

CL = reshape(CL, [D2, Db, Da, Db, Da, D2]);
for i = 1 : D2
	tmp = ncon({CL(:,:,:,:,:,i), conj(B{ix,5}), A{ix,5}}, {[-1,1,3,2,4], [5,1,2,-2,-4], [5,3,4,-3,-5]}, [1,2,3,4,5]);
	CL(:,:,:,:,:,i) = ncon({tmp, conj(B{ix,4}), A{ix,4}, conj(B{ix,6}), A{ix,6}}, ...
    				  {[-1,1,2,4,5], [3,1,-2], [3,2,-3], [6,4,-4], [6,5,-5]}, [4,5,6,1,2,3]);
end

CL = reshape(CL, [Db, Da, Db, Da, D2, D2]);
for i = 1 : D2
	CL(:,:,:,:,:,i) = ncon({CL(:,:,:,:,:,i), conj(B{ix,2}), A{ix,2}, conj(B{ix,3}), A{ix,3}}, ...
     				  {[1,3,2,4,-5], [5,1,2,-1,6], [5,3,4,-2,7], [8,6,-3], [8,7,-4]}, [1,2,3,4,5,6,7,8]);
end
CL = reshape(CL, [D2, D2*D2*D2]);
C5 = reshape(ncon({conj(B{ix,1}), A{ix,1}}, {[1,-3,-1], [1,-4,-2]}, [1]),[D2,D2]);
CL = C5 * CL;

end

