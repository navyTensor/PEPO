function [EC, Coef] = GetExactCircuit(A, Rx)

for i = 1 : 127
    Da = size(A{i});
    if( numel(Da) == 2 )
        A{i} = ncon({A{i}, Rx}, {[1,-2], [-1,1]});
    elseif( numel(Da) == 3 )
        A{i} = ncon({A{i}, Rx}, {[1,-2,-3], [-1,1]});
    elseif( numel(Da) == 4 )
        A{i} = ncon({A{i}, Rx}, {[1,-2,-3,-4], [-1,1]});        
    end
    
    A{i} = reshape(A{i}, [2,2,Da(2:end)]);
    A{i} = squeeze(reshape(A{i}(1,1,:), [1,Da(2:end)]));
end

tCoef = zeros(7,1);
[CL, tCoef(1)] = FoldedLeftMove1st(A);
[CL, tCoef(2)] = FoldedLeftMove246(2, CL, A);
[CL, tCoef(3)] = FoldedLeftMove35(3, CL, A);
[CL, tCoef(4)] = FoldedLeftMove246(4, CL, A);
[CL, tCoef(5)] = FoldedLeftMove35(5, CL, A);
[CL, tCoef(6)] = FoldedLeftMove246(6, CL, A);
[EC, tCoef(7)] = FoldedLeftMoveLst(CL, A);
Coef = sum(tCoef);

end
