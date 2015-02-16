## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  ##set defaiult inverse value
  inv<-NULL
  set<-function(y){
    x<<-y
    m<<-NULL
    }
  setInverse<-function(y){
    inv<<-y
  }
  get<-function(){x}
  getInverse<-function(){inv}
  list(set=set,setInverse=setInverse,get=get,getInverse=getInverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
   ## Return a matrix that is the inverse of 'x'
  inverse<-x$getInverse()
  if(!is.null(inverse)){
    message('getting cached data')
    return(inverse)
  }
  else{
    temp<-x$get()
    inverse<-solve(temp,...)
    x$setInverse(inverse)
    inverse
  }
  
}
