function [ AB ] = MatKron( A, B )
% A(abcd...)B(1234...)=AB(a1b2c3d4...)

SizeA = size( A );
SizeB = size( B );
if( numel( A ) == 1 )
    SizeA = ones( 1, numel( SizeB ) );
end
if( numel( B ) == 1 )
    SizeB = ones( 1, numel( SizeA ) );
end

SizeAB = SizeA .* SizeB;
d = numel( SizeA );

a = [];
for i = 1 : d
    a = [ a, i, i + d ];
end
AB = reshape( A, [ prod( SizeA ), 1 ] ) * reshape( B, [ 1, prod( SizeB ) ] );
AB = RPRmatrix( AB, [ SizeA, SizeB ], a, SizeAB );



