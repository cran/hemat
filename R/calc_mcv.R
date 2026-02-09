#' Calculate Mean Corpuscular Volume (MCV)
#'
#' MCV measures the average volume of red blood cells in a blood sample.
#' @param ht Numeric value representing the hematocrit in percentage.
#' @param rb Numeric value representing the red blood cell count (millions/ µL).
#' @returns Numeric value representing the MCV in femtoliters (fL).
#' @examples
#' calc_mcv(40, 5)
#' @export
calc_mcv <- function(ht, rb) {
  if (ht <= 0 || rb <= 0) {
    stop("Hematocrit and red blood cell count must be positive values.")
  }
  mcv <- (ht * 10) / rb
  mcv <- round(mcv, 1)
  return(mcv)
}
