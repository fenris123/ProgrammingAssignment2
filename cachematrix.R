######PROGRAMING ASIGNMENT 2


####                   WARNING                           #####
####                   WARNING                           #####
####    Be sure that your matrix has an inverse, as we assume on the instructions         #####
####    Otherwhise,the result will be an error message                                    #####





### This Function takes a matrix, and store it and his inverse it into the parent enviroment


makeCacheMatrix <- function(x = matrix()) {
  
         
     storematrix <<- x             #### this store the matrix that we use on the parent enviroment
     storeinverse <<- solve(x)     #### this store the inverse matrix  on the parent enviroment
     
     message ("storing the following inverse matrix")
     print (solve(x))

}



## this seccond function creates a function that chek if the inverse of the matrix has been
## solved before, and on this case takes this solution from the cache. If not, it just calculates it
## and print the solution.



cacheSolve <- function(x, ...) {
 
     
     
     if ( identical ((x),storematrix) == TRUE ){      ##this will check if the matrix it's the same that we have in storage
          message("getting cached data")              ## On this case it will return the storaged inverse.          
          return(storeinverse)
          
     }
     
          else {                                      ## this will calculate and return the inverse if it's not stored.    
             
               message("calculating data")
               return (solve(x))
          }
     
     
     
}
   
