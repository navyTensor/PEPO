function SaveAsDat( fname, variable )

save( [ fname, '.dat' ], 'variable', '-ascii', '-double' );
