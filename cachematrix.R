# R Programming Assignment 2
# Requires forked git repository (ProgrammingAssignment2)


#####################################
# solved and commented code follows:


# given a definition of a square matrix, such as:
# md <- makeCacheMatrix(rbind(c(1,-1/4),c(-1/4,1)))

# store the matrix and set up several functions for
# working with it.

# returns a list of functions for operating on 
# matrices and their inverses: 
# 'set' and 'get' matrices, and 
# 'setinversematrix' and 'getinversematrix' inverse matrixes 
#   (if cached via cacheSolve function below)
#   md$get()
#   md$set(a_matrix)
#   md$getinversematrix()
#   md$setinversematrix(an_inverse_matrix)

makeCacheMatrix <- function(x = matrix()) {
    s <- NULL
    set <- function(y) {
        x <<- y
        s <<- NULL
    }
    get <- function() x
    setinversematrix <- function(solve) s <<- solve
    getinversematrix <- function() s
    list(set = set, get = get,
         setinversematrix = setinversematrix,
         getinversematrix = getinversematrix)
}


# given an object created from a square
# matrix previously processed in
# makeCacheMatrix(), solve the inverse of the matrix:
# cacheSolve(md)

# store it in the object using 'setinversematrix'
# for retrieval by function 'getinversematrix' 
#   (both defined in 'makeCacheMatrix()' above)

cacheSolve <- function(x, ...) {
    ## Return a matrix that is the inverse of 'x'
    s <- x$getinversematrix()
    if(!is.null(s)) {
        message("getting cached data")
        return(s)
    }
    data <- x$get()
    s <- solve(data, ...)
    x$setinversematrix(s)
    s
}

# end solved and commented code
#####################################















