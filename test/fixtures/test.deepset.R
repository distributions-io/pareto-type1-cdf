options( digits = 16 )
library( jsonlite )

alpha = 1
beta = 1
x = seq( -1000, 1000, 0.5 )
y = pparetoI( x, alpha, beta )

cat( y, sep = ",\n" )

data = list(
	alpha = alpha,
	beta = beta,
	data = x,
	expected = y
)

write( toJSON( data, digits = 16, auto_unbox = TRUE ), "./test/fixtures/deepset.json" )
