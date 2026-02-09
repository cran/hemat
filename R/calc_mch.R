#' Calculate Mean Corpuscular Hemoglobin (MCH)
#'
#' Calculates the MCH based on hemoglobin concentration and red blood cell count.
#' MCH measures the average amount of hemoglobin per red blood cell.
#' @param hb Numeric value representing the hemoglobin concentration in g/dL.
#' @param rb Numeric value representing the red blood cell count (millions/ µL).
#' @returns Numeric value representing the MCH in picograms (pg).
#' @examples calc_mch(15, 5)
#' @export
calc_mch <- function(hb, rb) {
  if (hb <= 0 || rb <= 0) {
    stop('Hemoglobin and red blood cell count must be positive values.')
  }
  mch <- (hb * 10) / rb
  mch <- round(mch, 1)
  return(mch)
}
