function [Ns] = Get_Exact_String(Id, Os, A, Rx)

% for m = 1 : numel(A)
%     if( ndims(A{m}) == 2 )
%         A{m} = ncon({Rx, A{m}}, {[-1,1], [1,-2]} );
%     elseif( ndims(A{m}) == 3 )
%         A{m} = ncon({Rx, A{m}}, {[-1,1], [1,-2,-3]} );
%     elseif( ndims(A{m}) == 4 )
%         A{m} = ncon({Rx, A{m}}, {[-1,1], [1,-2,-3,-4]} );               
%     end
% end

% B = A;
% for i = 1 : numel(Os)
%     m = Id(i);
%     if( ndims(A{m}) == 2 )
%         A{m} = ncon({Os{i}, A{m}}, {[-1,1], [1,-2]} );
%     elseif( ndims(A{m}) == 3 )
%         A{m} = ncon({Os{i}, A{m}}, {[-1,1], [1,-2,-3]} );
%     elseif( ndims(A{m}) == 4 )
%         A{m} = ncon({Os{i}, A{m}}, {[-1,1], [1,-2,-3,-4]} );        
%     end
% end


B = A;
for i = 1 : numel(Os)
    m = Id(i);
    if( ndims(B{m}) == 2 )
        A{m} = ncon({Rx, A{m}}, {[-1,1], [1,-2]} );
        B{m} = ncon({Os{i}*Rx, B{m}}, {[-1,1], [1,-2]} );
    elseif( ndims(B{m}) == 3 )
        A{m} = ncon({Rx, A{m}}, {[-1,1], [1,-2,-3]} );
        B{m} = ncon({Os{i}*Rx, B{m}}, {[-1,1], [1,-2,-3]} );
    elseif( ndims(B{m}) == 4 )
        A{m} = ncon({Rx, A{m}}, {[-1,1], [1,-2,-3,-4]} );        
        B{m} = ncon({Os{i}*Rx, B{m}}, {[-1,1], [1,-2,-3,-4]} );        
    end
end

[Ac] = InitColTensor(A);
[Bc] = InitColTensor(B);

[CL] = LeftMove1st(Ac, Bc);
[CL] = LeftMoveOdd(2, CL, Ac, Bc);
[CL] = LeftMoveEvn(3, CL, Ac, Bc);
[CL] = LeftMoveOdd(4, CL, Ac, Bc);
[CL] = LeftMoveEvn(5, CL, Ac, Bc);
[CL] = LeftMoveOdd(6, CL, Ac, Bc);
[Ns] = LeftMoveLst(CL, Ac, Bc)

% [CL] = LeftMove1st(Ac, Bc);
% [CL] = SmallMem_LeftMoveOdd(2, CL, Ac, Bc);
% [CL] = SmallMem_LeftMoveEvn(3, CL, Ac, Bc);
% [CL] = SmallMem_LeftMoveOdd(4, CL, Ac, Bc);
% [CL] = SmallMem_LeftMoveEvn(5, CL, Ac, Bc);
% [CL] = SmallMem_LeftMoveOdd(6, CL, Ac, Bc);
% [Ns] = LeftMoveLst(CL, Ac, Bc)

end