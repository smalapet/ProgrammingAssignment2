## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

## Example of input square matrix c=rbind(c(1, -1/4), c(-1/4, 1))
## Test by execute command cacheSolve(makeCacheMatrix(c))

## Function makeCacheMatrix created for store matrix object value in an environment   
makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  
  set <- function(y){
    x <<- y
    m <<- NULL
  }
  
  get <- function() x
  
  setInverse <- function(mtrx) m <<- mtrx
  
  getInverse <- function() m
  
  list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
}


## Function cacheSolve created for calculate inverse matrix
cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  m <- x$getInverse()
  if(!is.null(m)){
    message("getting inversed of a matrix")
    return(m)
  }
  
  data <- x$get()
  solve(data, ...)
}
