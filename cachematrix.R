## Put comments here that give an overall description of what your
## functions do

## the first function takes a matrix 

makeCacheMatrix <- function(x = matrix()) {
 #clear cache
        j <- NULL
 #defines set function to create the matrix
        set <- function(y){
    x <<- y
    j <<- NULL
  }
 #defines get function to get matrix
        get <- function()x
  #inverse now
        setInverse <- function(inverse) j <<- inverse
  getInverse <- function() j 
  #list of defined functions
        list(set = set, get = get, 
       setInverse = setInverse, 
       getInverse = getInverse)
}

#returns inversie of matrix by checking first if it exists in cache

cacheSolve <- function(x, ...) {
 #gets inverse value in cache
        j <- x$getInverse()
  if(!is.null(j)){
    message("getting cached data")
    return(j)
  }
  mat <- x$get()
  j <- solve(mat,...)
  x$setInverse(j)
  j
}

