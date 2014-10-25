# R Programming Assignment 2
# Requires forked git repository (ProgrammingAssignment2)


#####################################
# solved and commented code follows:


# given a definition of a square matrix, such as:
# md <- makeCacheMatrix(rbind(c(1,-1/4),c(-1/4,1)))
# store the matrix and set up several functions for
# getting and setting the inverse of the matrix.

# returns a list of functions for operating on 
# martices and thier inverses: 
# 'set' and 'get' matrices, 'setinversmatrix' and 
# 'getinversematrix' inverse matrixes 
# (if cached via cacheSolve function below)

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


# given an object created from 
# a square matrix previously processed in
# makeCacheMatrix(), solve the inverse of the matrix
# and store it in the object for retrieval by 
# functions 'setinversmatrix' and 
# 'getinversematrix' defined in  'makeCacheMatrix()'

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





#####################################
# original code follows:

## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

# makeCacheMatrix <- function(x = matrix()) {
#     
# }


## Write a short comment describing this function

# cacheSolve <- function(x, ...) {
#     ## Return a matrix that is the inverse of 'x'
# }


# end original code
#####################################



#####################################
# notes on grading follows:



# Was a valid GitHub URL containing a git repository submitted?
# 
# 0 points: A valid GitHub URL was NOT submitted (or URL is broken)
# 1 point: The submitted URL points to a GitHub repository
# 

# ANSWER:
# URL pointing to a GitHub repository:
# https://github.com/shemp9999/ProgrammingAssignment2



# Does the GitHub repository contain at least one commit beyond the original fork?
# 
# 0 points: No, there are no commits beyond the original fork
# 1 point: Yes, there is at least one commit beyond the original fork
# 

# ANSWER:
# URL with at least one commit:
# https://github.com/shemp9999/ProgrammingAssignment2


# Was a SHA-1 submitted indicating a specific commit in the GitHub repository?
# 
# 0 points: No, there was no SHA-1 submitted
# 1 point: Yes, a SHA-1 was submitted
# 

# ANSWER:
# SHA for initial commit:
# 6ec24bcf1cd6985beff76291801674d0dd678479


# If a SHA-1 was submitted along with the GitHub URL, does the SHA-1 
# correspond to a specific commit in the repository?
# 
# 0 points: No, there is no commit in the repository corresponding to that SHA-1
# 2 points: Yes, there is a commit in the repository corresponding to that SHA-1
#

# ANSWER:
# SHA for specific commit:
# https://github.com/shemp9999/ProgrammingAssignment2/commit/6ec24bcf1cd6985beff76291801674d0dd678479
# (aplogies for overly long comment length)

# Overall evaluation/feedback
# 
# Does the GitHub repository contain an R file containing code implementing 
# the completed assignment? 
# 
# NOTE: There is no need to run the code here, but rather you should visually inspect 
# the R file in the GitHub repository and check to see that there is code there beyond 
# the original stub that was committed there by the instructor. Do not attempt to judge 
# whether the code is correct or not.
# 
# 0 points: No, the R file does not contain any code implementing the completed assignment
# 1 point:  The R file contains code implementing a partially completed assignment
# 2 points: The R file contains code implementing the complete assignment
# 

# ANSWER (uncommented and full of code):
# TO-DO - code the functions
# makeCacheMatrix <- function(x = matrix()) {
#     
# }
# cacheSolve <- function(x, ...) {
#     ## Return a matrix that is the inverse of 'x'
# }



# Does the R file containing the code have any comments explaining what the code does?
# 
# NOTE: The makeCacheMatrix and cacheSolve functions should both be documented with 
# explanatory comments. There maybe other functions in the R file but they do not 
# need to be commented.
# 
# 0 points: There are no explanatory comments in the R file
# 1 points: One of the functions has some corresponding explanatory comments in the R file
# 2 points: Both functions have corresponding explanatory comments in the R file
# 

# ANSWER (uncommented and full of code):
# TO-DO - code the functions and improve the comments

# # This is the First function to edit. The comments will be glorious
# makeCacheMatrix <- function(x = matrix()) {
#     
# }
# 
# 
# # This is the Second function to edit. The comments will also be glorious
# cacheSolve <- function(x, ...) {
#     ## Return a matrix that is the inverse of 'x'
# }


# https://github.com/shemp9999/ProgrammingAssignment2/blob/master/cachematrix.R

# Does the R code implementing the 'makeCacheMatrix' function appear to be correct, 
# to the best of your ability to judge?
# 
# NOTE: Do not run the R code on your own computer. Please examine the R code and 
# determine to the best of your ability, whether the solution presented appears to match 
# the requirements of the assignment. A correct solution (as best you can determine) 
# gets 1 point and a solution that is well-written and easy to read gets an additional 1 point.
# 
# 0 points: The solution contains at least one identifiable problem
# 1 point:  The solution appears to be correct
# 2 points: The solution appears to be correct and is written in a well-formatted and 
#           easily readable style
# 



# Does the R code implementing the 'cacheSolve' function appear to be correct, 
# to the best of your ability to judge?
# 
# NOTE: Do not run the R code on your own computer. Please examine the R code and 
# determine to the best of your ability, whether the solution presented appears to match 
# the requirements of the assignment. A correct solution (as best you can determine) 
# gets 1 point and a solution that is well-written and easy to read gets an additional 1 point.
# 
# 0 points: The solution contains at least one identifiable problem
# 1 point:  The solution appears to be correct
# 2 points: The solution appears to be correct and is written in a well-formatted and 
#           easily readable style
# 

# end notes on grading
#####################################














