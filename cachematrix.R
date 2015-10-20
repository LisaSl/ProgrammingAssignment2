## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
        s<-NULL 
        set<-function(y){        #stores the new matrix in the main function
                x<<-y
                s<<-NULL         
        }
        get<-function()x         #returns matrix x stored above
        setsolve<-function(solve)s<<-solve    #stores the inverted matrix in s within main function
        getsolve<-function()s                #returns the value of the input into the main function
        list(set=set, get=get,               #sets up a list of functions
}

## The following function inverts the matrix using the solve function, checking first to see
cacheSolve <- function(x = matrix(),...) {
        s<-x$getsolve()
        if(!is.null(s)){  #if matrix already inverted and cached
                message("getting cached data")
                return(s)    #then return message and cached matrix
        }
        data<-x$get()  #if matrix not cached, then invert and cache for future
        s<-solve(data)
        x$setsolve(s)
        s             # return matrix that is inverse of x
}        


