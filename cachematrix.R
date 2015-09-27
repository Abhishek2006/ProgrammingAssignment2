## The following pair of functions create a matrix and 
## cache its inverse

## the below function creates a special matrix object that can cache its inverse

makeCacheMatrix <- function(x = matrix()) {
  # set the value of inverse to null 
  mat_inverse <- NULL
  # create matrix and sets the value
  set_matrix <- function(y) {
    x <<- y
    mat_inverse <<- NULL
  }
  # gets the value of matrix
  get_matrix <- function() x
  # calculates the value of inverse
  set_inverse <- function(result_inverse) mat_inverse <<- result_inverse
  # gets the inverse
  get_inverse <- function() mat_inverse
  # a list is returned for makeCacheMatrix
  list(
    set_matrix = set_matrix, get_matrix = get_matrix, 
    set_inverse = set_inverse, get_inverse = get_inverse
    )
}


## The below function computes the inverse of matrix. If the inverse is already
## calculated the function retrieves the inverse from the cache

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  
  IM <- x$get_inverse()
  # first retrieve the inverse from cache if already computed
  if (!is.null(IM)) {
   message("retrieving cached inverse")
     return(IM)
  }
  # else calculate the inverse if not already computed
  z <- x$get_matrix()
  result_inverse <- solve(z)
  
  x$set_inverse(result_inverse)
  return(result_inverse)
}  

