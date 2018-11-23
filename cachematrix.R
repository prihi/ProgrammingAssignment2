## Put comments here that give an overall description of what your
## functions do


##This function creates a matric object which will store the inverse of the metrix which is an invertible metrics 


makeCacheMatrix <- function(x = matrix()){
inv<- NULL
set<- function(y) {
x<<- y
inv<<- NULL
}
get<- function() x
setinverse<- function(inverse)
inv<<- inverse
getinverse<- function() inv
list(set = set, get= get, setinverse= getinverse)
}



##This function will check if the inverse of the given metrics exists in the cache and retrieve that else call the compute done in the above function 

cacheSolve <- function(x, ...) {

inv<- x$getinverse()
if(!is.null(inv)) {
message("getting cached result")
return(inv)

}

data<- x$get()
inv<- solve(data,...)
x$setinverse(inv)
inv
}
