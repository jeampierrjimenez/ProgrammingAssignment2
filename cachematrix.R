## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

## The following two functions are used to cache the inverse of a matrix.

makeCacheMatrix <- function(x = matrix()) {
  
  inv <- NULL
  
  set <- function(y) {
    x <<- y
    inv <<- NULL
  }
  
  get <- function() x
  setinverse <- function(inverse) inv <<- inverse
  getinverse <- function() inv
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}


## Write a short comment describing this function

## the function "cachesolve" retrieve the inverse from the cache.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  inv <- x$getinverse()
  if(!is.null(inv)) {
    message("the data that was stored is being obtained")
    return(inv)
  }
  data <- x$get()
  inv <- inverse(data, ...)
  x$setinverse(inv)
  inv
}

