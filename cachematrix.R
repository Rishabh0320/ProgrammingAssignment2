## Put comments here that give an overall description of what your functions do
## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) 
{
  m <- NULL 
  n <- NULL
  set <- function(y)
  {
    x <<- y
    m<<- NULL
  }
  get <- function()
  {
    x
  }
  setinverse <- function(inverse)
  {
    m <<- inverse
  }
  getinverse <- function()
  {
    m
  }
  abc <- list(set = set, get = get, setinverse = setinverse, getinverse = getinverse, matrix = n)
  abc
}

## makeCacheMatrix function creates a list of the matrix taken as argument and stores its inverse as one of its elements.

cacheSolve <- function(x, ...) 
{
  m <- x$getinverse()
  n <- x$matrix
  data <- x$get()
  
  if(!is.null(m) && (data == n))          ## Checks if the matrix has been changed using set() function
  {                                       ## or if the inverse has already been calculated previously
    message("Getting cached data")
    return(m)
  }
  
  m <- solve(data, ...)
  x$setinverse(m)
  m
}

## cachesolve function returns a matrix that is the inverse of 'x'