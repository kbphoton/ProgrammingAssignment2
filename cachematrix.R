## Put comments here that give an overall description of what your
## functions do

## These two functions combined to make cached computation of 
## inverse of matrix

## Write a short comment describing this function
## makeCacheMatrix function caches the matrix and its inverse in 
## its environment

makeCacheMatrix <- function(x = matrix()) {
	m_inv <- NULL	
	
	set <- function(y){	
		x <<- y
		m_inv <<- NULL
	
	}

	get <- function() x
	setinv <- function (inv) m_inv <<- inv

	getinv <- function() m_inv

	list(set = set,get=get,setinv=setinv,getinv=getinv)

}


## Write a short comment describing this function
## cacheSolve either compute the inverse and put the 
## result into environment of makeCacheMatrix function or get the 
## inverse from the makeCacheMatrix function environment

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
	#browser()
	m_inv <- x$getinv()
	#browser()
	if (!is.null(m_inv)){
		message("got cached matrix inverse")
		return(m_inv)
	} 
	data<-x$get()
	#browser()
	m_inv<-solve(data,...)
	x$setinv(m_inv)
	m_inv

}
