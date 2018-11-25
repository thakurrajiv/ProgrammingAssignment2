## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  cachedInverse <- NULL
  set <- function(y) {
    x <<- y
    cachedInverse <<- NULL
  }
  
  get <- function() x
  setInverse <- function(inver) cachedInverse <<- inver
  getInverse <- function() cachedInverse
  
  list( set = set, get = get,
        setInverse = setInverse,
        getInverse = getInverse)

}



## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  ##first check cache
  inver = x$getInverse()
  if( !is.null(inver)) {
      message( "returning from cache")
      return( inver )
  }
  
  ##if not cache populate cache
  message( "not in cache populate")
  matr <- x$get()
  x$setInverse( solve(matr))
  return( x$getInverse())
      
}
