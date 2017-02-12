## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
 inv1 <- NULL
        set <- function(y) {
                x <<- y
                inv1 <<- NULL
        }
        get <- function() x
        setInverse <- function(inverse) inv1 <<- inverse
        getInverse <- function() inv1
        list(set = set,
             get = get,
             setInverse = setInverse,
             getInverse = getInverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
inv1 <- x$getInverse()
        if (!is.null(inv)) {
                message("getting cached data")
                return(inv1)
        }
        mat <- x$get()
        inv1 <- solve(mat, ...)
        x$setInverse(inv1)
        inv1
}
