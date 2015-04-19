######PROGRAMING ASIGNMENT 2


####                   WARNING                           #####
####                   WARNING                           #####

####    Be sure that your matrix has an inverse.         #####
####    Otherwhise,the result will be an error message   #####


### This Function takes  a matrix, and fixed it's inverse it into the parent enviroment
### if we need this value again and it has not changed

makeCacheMatrix <- function(x = matrix()) {
     
         
         
     storematrix <<- x 
     storeinverse <<- solve(x)
     message ("storing the following inverse matrix")
     print (solve(x))

}

## this seccond function creates a function that chek if the inverse of the matrix has been
## solved before, and on this case takes this solution from the cache. If not, it just calculates it
### and print the solution.



cacheSolve <- function(x, ...) {

     if ( identical ((x),storematrix) == TRUE ){
          message("getting cached data")
          return(storeinverse)
     }
     
         else {
               message("calculating data")
               return (solve(x))
          }
    
     
}
   
