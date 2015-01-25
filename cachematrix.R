## These functions allow for caching of matrix and providing inverse of matrix. 


## this function saves the inverse of a matrix

makeCacheMatrix <- function(x = matrix()) {
  
  set <- function(y) {
    x <<- y
  }
  
  get <- solve(x) 
  
  list ( set = set, get = get )
}


## this function returns the inverse of a matrix from cache

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  i <- x ["get"]
  
  if(!is.null(i)) {
    message("getting cached data")
    return(i)
  }
  data <- x$get()
  i <- solve(data, ...)
  i
}
