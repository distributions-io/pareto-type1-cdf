'use strict';

// FUNCTIONS //

var pow = Math.pow;


// CDF //

/**
* FUNCTION: cdf( x, alpha, beta )
*	Evaluates the cumulative distribution function (CDF) for a Pareto distribution with shape parameter `alpha` and scale parameter `beta` at a value `x`.
*
* @param {Number} x - input value
* @param {Number} alpha - shape parameter
* @param {Number} beta - scale parameter
* @returns {Number} evaluated CDF
*/
function cdf( x, alpha, beta ) {
	if ( x < beta ) {
		return 0;
	}
	return 1 - pow( beta / x, alpha );
} // end FUNCTION cdf()


// EXPORTS //

module.exports = cdf;
