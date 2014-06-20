## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

## makeCacheMatrix: return a list of functions to:
## 1. Set the value of the matrix
## 2. Get the value of the matrix
## 3. Set the value of the invMerse
## 4. Get the value of the invMerse


makeCacheMatrix <- function(x = matrix()) {
	## m will store the cached inverse matrix
	m <- NULL


	## Set for the matrix
	set <- function(y){
		x <<- y
		m <<- NULL
	}


	## Get for the matrix
	get <- function() {
		x
	}


	## Set for the inverse matrix
	setmatrix <- function(solve) {
		m <<- solve
	}


	## Get for the inverse matrix
	getmatrix <- function() {
		m
	}


	# Return the matrix
	list(set = set, get = get, setmatrix = setmatrix, getmatrix = getmatrix)


}

## cacheSolve: Compute the inverse of the matrix. If the inverse is already
## calculated before, it returns the cached inverse.

## Write a short comment describing this function

cacheSolve <- function(x=matrix(), ...) {
	## Return a matrix that is the inverse of 'x'

	m <- x$getmatrix()
    
	## The inverse is already calculated, then return itself
	if(!is.null(m)){
		message("getting cached data")
		return(m)
	}


	## The inverse is not yet calculated, then calculate it
	matrix <- x$get()
	m <- solve(matrix, ...)


	## Cache the inverse
	x$setmatrix(m)


	## Return
	m
}
