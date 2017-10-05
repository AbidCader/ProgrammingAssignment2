## I will build the functions in following step by step 
## the given exemples
## Note:solve(A) Inverse of A where A is a square matrix.


makeCacheMatrix <- function(x = matrix()) { 	#makeVector <- function(x = numeric()) {
	s<- NULL									#	m <- NULL
	set <- function(y) {						#	set <- function(y) {
	x <<- y										#	x <<- y
	s <<- NULL									#	m <<- NULL
	}											#	}
	get <- function() x							#	get <- function() x
	setsolve <- function(solve) s <<- solve		#	setmean <- function(mean) m <<- mean
	getsolve <- function() s					#	getmean <- function() m
	list(set = set, get = get,					#	list(set = set, get = get,
	setsolve = setsolve,						#	setmean = setmean,
	getsolve = getsolve)						#	getmean = getmean)
	list(set = set, get = get,					#	list(set = set, get = get,
	setsolve = setsolve,						#	setmean = setmean,
	getsolve = getsolve)						#	getmean = getmean)
}												#}
								




## I write the function in following the model

cacheSolve <- function(x, ...) {				#cachemean <- function(x, ...) {	
	s <- x$getsolve()							#	m <- x$getmean()
	if(!is.null(s)) {							#	if(!is.null(m)) {
		message("getting cached data")			#		message("getting cached data")
		return(s)								#		return(m)
	}											#	}
	data <- x$get()								#	data <- x$get()
	s <- solve(data, ...)						#	m <- mean(data, ...)
	x$setsolve(s)								#	x$setmean(m)
	s											#	m
}												#}
												#
									
									

