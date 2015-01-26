## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## The function will create matrix using the argument passed on x
makeCacheMatrix <- function(x = matrix()) {

  m <- NULL
  
  set <- function(y){    
    x <<- y
    m <<- NULL    
  }   
      get <- function() x
      setInverse <- function(solve) m <<- solve
      getInverse <- function() m
      list (set =  set, get = get, setInverse = setInverse, getInverse = getInverse)    
}


## Write a short comment describing this function
## This function will return the inverse using the solve function
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
    m <- x$getInverse()
    if (!is.null(m)){
        message("getting cached data")
        return(m)
    }
    data <- x$get()
    m <- solve(x)%*%x
    x$setInverse(m)
    m
}
