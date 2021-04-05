#' @tile Normal Probability Distribution
#'
#' @param mu mean
#' @param sigma standard deviation
#' @param a probablitiy bound
#'
#' @return
#' @export
#'
#' @examples
#' \dontrun{myncurve(mu = 4, sigma = 5, a = 3)}
myncurve = function(mu, sigma, a){
  curve(dnorm(x,mean=mu,sd=sigma), xlim = c(mu-3*sigma, mu+3*sigma))
  #Shading the region
  x1 = seq(-100, a, length = 100000)
  y1 = dnorm(x1, mu, sigma)
  polygon(c(-100, x1, a), c(0, y1, 0), col = "RED")
  #Calculating the area
  area = round(pnorm(a, mu, sigma), 4)
  return(list(paste("Area = ", area)))



}
