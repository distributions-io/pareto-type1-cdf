options( digits = 16 )
library( jsonlite )
library( VGAM )

alpha = 3
beta = 1
x = c( -5, -2.5, 0, 2.5, 5 )
y = pparetoI( x, beta, alpha )

cat( y, sep = ",\n" )

data = list(
	alpha = alpha,
	beta = beta,
	data = x,
	expected = y
)

write( toJSON( data, digits = 16, auto_unbox = TRUE ), "./test/fixtures/partial.json" )
