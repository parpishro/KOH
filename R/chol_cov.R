#' Compute the augmented covariance matrix
#'
#' @param sim simulation data
#' @param field field data
#' @param phi model parameters/hyperprameters
#'
#' @return covariance matrix of augmented data matrix
#' @export
#'
#' @examples
chol_cov <- function(env) {

  env0             <- environment()
  parent.env(env0) <- env




  return(CovD)
}


