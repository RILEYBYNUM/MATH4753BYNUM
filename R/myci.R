#' @title A 95% Confidence Interval Function
#'
#' @param d data set
#'
#' @return
#' @export
#'
#' @examples
myci=function(d){
n=length(d)

t=qt(0.95,(n-1))
ci=c()
ci[1]=mean(d)-t*sd(d)/sqrt(25)
ci[2]=mean(d)+t*sd(d)/sqrt(25)
ci
}
