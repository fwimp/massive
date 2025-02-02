#' @title Convert wet weight to approximate (ash) dry weight
#' @description This performs a simple conversion of wet weight to ash dry weight via Peters' approximate conversion.
#'
#' @param wet A vector of wet masses in kg
#' @param fctr a factor between 3 and 10 to use in the conversion (as Peters specifies a range of possible conversions). Defaults to 22/7 (3.14) to keep the relationship between [dry2j] and [wet2j] consistent.
#'
#' @author Francis Windram
#' @return The equivalent dry mass values in kg
#' @references Peters, R.H. (1983) The Ecological Implications of Body Size. Cambridge: Cambridge University Press (Cambridge Studies in Ecology), pp. 231–296. [https://doi.org/10.1017/CBO9780511608551](https://doi.org/10.1017/CBO9780511608551), Appendix Ia
#'
#' @examples
#' v <- rnorm(20, 10, 2)
#' v
#' wet2dry(v)
#' @concept converter
#'
#' @export
#'

wet2dry <- function(wet, fctr = 3.142857) {
  if (fctr < 3 || fctr > 10) {
    cli::cli_abort(c("x" = "{.arg fctr} must be between {.val {3}} and {.val {10}} (provided {.val {fctr}})"))
  }
  return(wet / fctr)
}
