options( digits = 16 )
library( jsonlite )
library( VGAM )

alpha = 1
beta = 3
x = c( 5, 8, 10, 15, 20 )
y = pparetoI( x, beta, alpha )

cat( y, sep = ",\n" )

data = list(
	alpha = alpha,
	beta = beta,
	data = x,
	expected = y
)

write( toJSON( data, digits = 16, auto_unbox = TRUE ), "./test/fixtures/number.json" )
