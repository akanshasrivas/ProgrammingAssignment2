## Put comments here that give an overall description of what your
## functions do

## ## This function makeCacheMtrix creates a special "matrix".
##It is a function  which set matrix, get matrix, set inverse matrix 
## and get the inverse matrix 

makeCacheMatrix <- function(x = matrix()) {
inverseMatrix<-  NULL
  setmatrix<- function(y){}
  setmatrix<- function(y){
    x<<- y 
    inverseMatrix<<- NULL
  }
  getMatrix<-function()x
  setinversematrix<- function(inverse) inverseMatrix<<- inverse
  getinversematrix<- function()inverseMatrix
  list(setmatrix=setmatrix, getMatrix=getMatrix,
       setinversematrix=setinversematrix, getinversematrix=getinversematrix)
}


## cacheSolve calculates the inverse of matrix.It checks if inverse is already calculated 
#then get inverse from cached data otherwise calculates inverse of the matrix

cacheSolve <- function(x, ...) {
        inverseMatrix<- x$getinversematrix()
  if(!is.null(inverseMatrix)){    #if inverse is already calculated
    message("Getting cached data")
    return(inverseMatrix)
  }
  
  ##If inverseMatrix is Null then it calculated inverse as below
  Matrixdata<- x$getMatrix()
  inverseMatrix<- solve(Matrixdata, ...)
  x$setinversematrix(inverseMatrix)
  inverseMatrix 
        ## Return a matrix that is the inverse of 'x'
}
