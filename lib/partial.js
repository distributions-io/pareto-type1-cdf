'use strict';

// FUNCTIONS //

var pow = Math.pow;


// PARTIAL //

/**
* FUNCTION: partial( alpha, beta )
*	Partially applies shape parameter `alpha` and scale parameter `beta` and returns a function for evaluating the cumulative distribution function (CDF) for a Pareto distribution.
*
* @param {Number} alpha - shape parameter
* @param {Number} beta - scale parameter
* @returns {Function} CDF
*/
function partial( alpha, beta ) {
	/**
	* FUNCTION: cdf( x )
	*	Evaluates the cumulative distribution function (CDF) for a Pareto distribution.
	*
	* @private
	* @param {Number} x - input value
	* @returns {Number} evaluated CDF
	*/
	return function cdf( x ) {
		if ( x < beta ) {
			return 0;
		}
		return 1 - pow( beta / x, alpha );
	};
} // end FUNCTION partial()


// EXPORTS //

module.exports = partial;
