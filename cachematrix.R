## This script has two functions 1. to create a special matrix and 
## 2. to cache the inverse of a matrix

## I admit I have no idea how this is working as of now.

makeCacheMatrix <- function(x = matrix()) {
	m <- NULL
	set <- function(y) {
		x <<- y
		m <<- NULL
	}
	get <- function() x
	setinverse <- function(solve) m <<- solve
	getinverse <- function() m
	list(set = set, get = get,
		setinverse = setinverse,
		getinverse = getinverse)
}


##  I just copied the code from the example, I have no idea even how the example
# works

cacheSolve <- function(x, ...) {
	m <-x$getinverse()
	if(!is.null(m) {
		message("getting cached inverse")
		return(m)
	}
	data <-x$get()
	m <- solve(data, ...)
	x$setinverse(m)
	m
        ## Return a matrix that is the inverse of 'x'
}
