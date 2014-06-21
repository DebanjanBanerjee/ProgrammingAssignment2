## The makeCacheMatrix() function accepts as Input a matrix and then converts the
##matrix into a vector. 

makeCacheMatrix <- function(x = matrix()) {
invert <- NULL
set <- function(y){
             x <<- y
             m <<- NULL
}
get <- function() x
setinvert <- function(val) invert <- val
getinvert <- function() invert
list(set = set, get = get,
             setinvert = setinvert,
             getinvert = getinvert)
}


## The cacheSolve() function takes as input a vector. The vector generated from
##the makeCacheMatrix() function is used here as the input. 
##This function first checks whether the inverse of the matrix is stored in the cache 
##and if not then it computes the cache and displays the value while storing the
##same in the cacheVector

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
invert_matrix <- x$getinvert()
if (!is.null(invert_matrix))
{
                print("getting cached data")
                print(invert_matrix)

}
else {
data <- x$get()
invert <- solve(data)
x$setinvert(invert)
print("outside the if-structure")
invert
}
}
