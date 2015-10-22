<<<<<<< HEAD
## The following pair of functions create a matrix and 
## cache its inverse
=======
## Put comments here that give an overall description of what your
## functions do
>>>>>>> parent of cc7acc2... first commit

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
<<<<<<< HEAD
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
=======

>>>>>>> parent of cc7acc2... first commit
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
<<<<<<< HEAD
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

=======
        ## Return a matrix that is the inverse of 'x'
}
>>>>>>> parent of cc7acc2... first commit
