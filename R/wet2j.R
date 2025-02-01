#' @title Convert wet weight to approximate energy content
#' @description This performs a simple conversion of wet weight to energy via Peters' approximate conversion.
#'
#' @param dry A vector of wet masses (in kg)
#'
#' @author Francis Windram
#' @return The equivalent energy in Joules
#' @references Peters, R.H. (1983) The Ecological Implications of Body Size. Cambridge: Cambridge University Press (Cambridge Studies in Ecology), pp. 231–296. [https://doi.org/10.1017/CBO9780511608551](https://doi.org/10.1017/CBO9780511608551), Appendix Ia
#'
#' @examples
#' v <- rnorm(20, 10, 2)
#' v
#' wet2j(v)
#' @concept converter
#'
#' @export
#'

wet2j <- function(dry) {
  return(dry * 7e6)
}
