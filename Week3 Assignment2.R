## The goal is to obtain the inverse of a matrix. 
## This assignment will have two steps.
## In the first step, a function is created that caches a matrix.
## In the second step, another function is created that caches the inverse of the above matrix.

## The First Step:

makeCacheMatrix <- function(x=matrix()) {
myinverse <- NULL
set <- function(y) {
x <<- y
myinverse <<- NULL
}
get <- function()x
setInverse <- function(inverse) myinverse <- inverse
getInverse <- function() myinverse
list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
}

## The Second Step:

cacheSolve <- function(x, ...) {
myinverse <- x$getInverse()
if (!is.null(myinverse)) {
message("getting cached data")
return(myinverse)
}
mymatrix <- x$get()
myinverse <- solve(mymatrix,...)
x$setInverse(myinverse)
myinverse
}
