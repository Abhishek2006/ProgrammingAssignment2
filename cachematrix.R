## The follwoing pair of functions create a matrix and 
## cache its inverse

## the below function creates a special matrix object that can cache its inverse

makeCacheMatrix <- function(x = matrix()) {
  mat_inverse <- NULL
  set_matrix <- function(y) {
    x <<- y
    mat_inverse <<- NULL
  }
  
  get_matrix <- function() x
  set_inverse <- function(result_inverse)
  mat_inverse <<- result_inverse
  get_inverse <- function() mat_inverse
  list(
    set_matrix = set_matrix, get_matrix = get_matrix, 
    set_inverse = set_inverse, get_inverse = get_inverse
    )
}


## The below function computes the inverse of matrix. If the inverse is already
## calculated the function retrieves the inverse from the cache

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  
  y <- x$get_inverse()
  # first retrieve the inverse from cache if already computed
  if (!is.null(y)) {
    return(y)
  }
  # else calculate the inverse if not already computed
  z <- x$get_matrix()
  result_inverse <- solve(z)
  
  x$set_inverse(result_inverse)
  return(result_inverse)
}  