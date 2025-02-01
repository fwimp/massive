#' @title Convert (ash) dry weight to approximate wet weight
#' @description This performs a simple conversion of ash dry weight to wet weight via Peters' approximate conversion.
#'
#' @param dry A vector of dry masses in kg
#' @param fctr a factor between 3 and 10 to use in the conversion (as Peters specifies a range of possible conversions).
#'
#' @author Francis Windram
#' @return The equivalent wet mass values in kg
#' @references Peters, R.H. (1983) The Ecological Implications of Body Size. Cambridge: Cambridge University Press (Cambridge Studies in Ecology), pp. 231–296. [https://doi.org/10.1017/CBO9780511608551](https://doi.org/10.1017/CBO9780511608551), Appendix Ia
#'
#' @examples
#' v <- rnorm(20, 10, 2)
#' v
#' dry2wet(v)
#' @concept converter
#'
#' @export
#'

dry2wet <- function(dry, fctr = 5) {
  if (fctr < 3 || fctr > 10) {
    cli::cli_abort(c("x" = "{.arg fctr} must be between {.val {3}} and {.val {10}} (provided {.val {fctr}})"))
  }
  return(dry * fctr)
}
