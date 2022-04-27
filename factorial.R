findfact <- function(n){
  f = 1
  if(n==0 | n==1){
    f<-1
  }else{
    for(i in 1:n){
      f=f*i
    }
    
  }
  return(f)
}

n = as.integer(readline(prompt = "Enter a Number: "))
f = findfact(n)
print(paste("Factorial of ", n, " is ", f))