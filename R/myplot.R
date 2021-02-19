#' @title An Introductory Plot
#'
#' @param x A Quantitative Vector
#'
#' @return A plot
#' @export
#'
#' @examples
#' \dontrun{d <- 1:40; myplot(x = d)}
myplot=function(x){
  y <- 0.86089580 +1.46959217*x  -0.02745726*x^2
  plot(y~x, col = "blue", type = "l", lwd = 2, main = "Small Plot")
}
