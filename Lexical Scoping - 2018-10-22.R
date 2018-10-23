## This project's purpose is to write a pair of functions, named: 
## "makeCacheMatrix" and "cacheSolve" that will cache the inverse of a matrix

## The makeCacheMatrix function creates a "matrix" object that can 
## cache its inverse for the input (which is an invertible square matrix)

makeCacheMatrix <- function(x = matrix()) {
   inv <- NULL
  set <- function(y) {
    x <<- y
    inv <<- NULL
  }
  get <- function() x
  setinv <- function(inverse) inv <<- inverse
  getinv <- function() inv
  list(set = set, get = get, 


}

## cacheSolve is a function which computes the inverse of the special "matrix" 
## returned by makeCacheMatrix above. If the inverse has already been calculated 
## (and the matrix has not changed), then the cachesolve should retrieve the 
## inverse from the cache

cacheSolve <- function(x, ...) {
 ## Return a matrix that is the inverse of 'x'


 inv <- x$getinv()
  if(!is.null(inv)) {
    message("getting cached calc")
    return(inv)
  }
  data <- x$get()
  inv <- solve(data, ...)
  x$setinv(inv)
  inv
}

## Check the program------------------------
mat <- matrix(rnorm(25),5,5)
mat1 <- makeCacheMatrix(m)
cacheSolve(mat1)
