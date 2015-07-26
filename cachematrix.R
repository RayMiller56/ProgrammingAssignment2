## The overall goal of these functions is 1) to determine inverse of square matrix and return the inverse to some object and
## 2) to determine if this has already been done and if so return the already calc inverse

## This function takes a matrix argument and solves it returning the inverse matrix as object i

makeCacheMatrix <- function(x = matrix()) {
  
  original_matrix <<- x
   my_inverse <- solve(x)
  i <<- my_inverse
  }

#cacheSolve takes matrix argument and checks to see if this arguement is identical to the original matrix object and if
#you've already caclculated the inverse(i).  If so it returns inverse i in new object x.  If not calcs inverse and returns
#to x

cacheSolve <- function(x, ...) {
  
  if (identical(original_matrix, x) & !is.null(i)){
    print("Returning cached matrix")
    x <<- i
  }
  else {
    x <<- (solve(x))
  }
}
