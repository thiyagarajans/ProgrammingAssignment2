## This script has two functions 1. to create a special matrix and 
## 2. to cache the inverse of a matrix

## Though not clear how this works, I managed to set it to work, just by copying
# the example code and slightly modifying it.

#Run this code with x <- makeCacheMatrix(matrix(rnorm(9),3,3))
#This creates the matrix, calcualates the inverse and stores.

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
#works with a test matrix

cacheSolve <- function(x, ...) {
	m <-x$getinverse()
	if(!is.null(m)) {
		message("getting cached inverse")
		return(m)
	}
	data <-x$get()
	m <- solve(data, ...)
	x$setinverse(m)
	m
        ## Return a matrix that is the inverse of 'x'
}
