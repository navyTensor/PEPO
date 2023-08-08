function [ M ] = RPRmatrix( M, InitShape, Place, FinShape )

M = reshape( M, InitShape );
if( sum( Place - 1 : numel( InitShape ) ) ~= 0 )
    M = permute( M, Place );
end
if( nargin == 4 )
    M = reshape( M, FinShape );
end