options( digits = 16 )
library( jsonlite )
library( VGAM )

alpha = 4
beta = 7
x = seq( 9, 100, 0.5 )
y = pparetoI( x, beta, alpha )

cat( y, sep = ",\n" )

data = list(
	alpha = alpha,
	beta = beta,
	data = x,
	expected = y
)

write( toJSON( data, digits = 16, auto_unbox = TRUE ), "./test/fixtures/accessor.json" )
