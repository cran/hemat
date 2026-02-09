#' Calculate Mean Corpuscular Hemoglobin Concentration (MCHC)
#'
#' Calculates the MCHC based on hemoglobin concentration and hematocrit.
#' CHCM measures the average concentration of hemoglobin in red blood cells.
#' @param hb Numeric value representing the hemoglobin concentration in g/dL.
#' @param ht Numeric value representing the hematocrit in percentage.
#' @returns Numeric value representing the MCHC in grams per deciliter (g/dL).
#' @examples
#' calc_mchc(15, 40)
#' @export
calc_mchc <- function(hb, ht) {
  if (hb <= 0 || ht <= 0) {
    stop('Hemoglobin and hematocrit must be positive values.')
  }
  mchc <- (hb * 100) / ht
  mchc <- round(mchc, 1)
  return(mchc)
}
