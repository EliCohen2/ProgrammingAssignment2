## Put comments here that give an overall description of what your
## functions do

## Set input x as matrix, value of "t" as the null and changed references to "solve"


makeCacheMatrix <- function(x = matrix(sample(1:100,9),3,3)) {
  t <- NULL
  set <- function(y) {
    x <<- y
    t <<- NULL
  }
  get <- function() x
  setsolve <- function(solve) t <<- solve
  getsolve <- function() t
  list(set = set, get = get,
       setsolve = setsolve,
       getsolve = getsolve)
  
}


## Changed "m" to "t" and set references to "solve"

cacheSolve <- function(x, ...) {
        t <- x$getsolve()
        if(!is.null(t)) {
          message("getting inversed matrix")
          return(t)
        }
        data <- x$get()
        t <- solve(data,...)
        x$setsolve(t)
        t
}

