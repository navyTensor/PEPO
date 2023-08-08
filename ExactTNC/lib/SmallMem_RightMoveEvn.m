function [CR] = SmallMem_RightMoveEvn(ix, CR, A, B)
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
CR = reshape(CR, [D2*D2*D2, D2]);
C5 = reshape(ncon({conj(B{ix,9}), A{ix,9}}, {[1,-3,-1], [1,-4,-2]}, [1]),[D2,D2]);
CR = CR*C5;

CR = reshape(CR, [D2, D2, Db, Da, Db, Da]);
for i = 1 : D2
    tmp = ncon({squeeze(CR(i,:,:,:,:,:)), conj(B{ix,7}), A{ix,7}, conj(B{ix,8}), A{ix,8}},...
          {[-1,3,5,6,7], [8,-2,-4,2,6], [8,-3,-5,4,7], [1,2,3], [1,4,5]}, [3,5,1,2,6,4,7,8]);
    CR(i,:,:,:,:,:) = reshape(tmp, [1, D2, Db, Da, Db, Da]);
end

CR = reshape(CR, [D2, Db, Da, Db, Da, D2]);
for i = 1 : D2    
    CR(:,:,:,:,:,i) = ncon({CR(:,:,:,:,:,i), conj(B{ix,5}), A{ix,5}, conj(B{ix,6}), A{ix,6}}, ...
                      {[-1,1,2,4,5], [3,-2,1], [3,-3,2], [6,-4,4], [6,-5,5]}, [1,2,3,4,5,6]);
    CR(:,:,:,:,:,i) = ncon({CR(:,:,:,:,:,i), conj(B{ix,4}), A{ix,4}}, {[-1,1,3,2,4], [5,-2,-4,1,2], [5,-3,-5,3,4]}, [1,2,3,4,5]);
end

CR = reshape(CR, [Db, Da, Db, Da, D2, D2]);
for i = 1 : D2    
    CR(:,:,:,:,:,i) = ncon({CR(:,:,:,:,:,i), conj(B{ix,2}), A{ix,2}, conj(B{ix,3}), A{ix,3}}, ...
                      {[1,2,4,5,-5], [3,-1,1], [3,-2,2], [6,-3,4], [6,-4,5]}, [1,2,3,4,5,6]);
    CR(:,:,:,:,:,i) = ncon({CR(:,:,:,:,:,i), conj(B{ix,1}), A{ix,1}}, {[1,3,2,4,-5], [5,-1,-3,1,2], [5,-2,-4,3,4]}, [1,2,3,4,5]);
end

end