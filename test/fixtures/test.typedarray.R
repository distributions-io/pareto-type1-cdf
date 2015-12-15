options( digits = 16 )
library( jsonlite )
library( VGAM )

alpha = 2
beta = 2
x = seq( 3, 1000, 0.5 )
y = pparetoI( x, beta, alpha )

cat( y, sep = ",\n" )

data = list(
	alpha = alpha,
	beta = beta,
	data = x,
	expected = y
)

write( toJSON( data, digits = 16, auto_unbox = TRUE ), "./test/fixtures/typedarray.json" )
