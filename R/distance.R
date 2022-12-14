# computes the element-by-element distance between rows of a given matrix

# REQUIRES: matrix X must have at least two rows and one column. If matrix Y is
#               provided, it must have the same number of columns as X
# EFFECTS: computes element-by-element absolute distance between all two rows
#             of the matrix. Since the absolute distance is symmetric between
#             two rows (absolute distance between row i and row j is same as
#             between row j and i), it will only compute it (nx * ny) times
#             distance vector

distance    <- function(X, Y = NULL) {
  if (is.null(Y)) {
    Y <- X
  }
  nx <- nrow(X)
  ny <- nrow(Y)
  d <- ncol(X)
  numRow <- nx * ny
  distance <- matrix(nrow = numRow, ncol = d)
  for (i in 1:nx) {
    for (j in 1:ny) {
      distance[((i - 1) * ny) + j, ] <- abs(X[i, ] - Y[j, ])
    }
  }
  return(distance)
}
