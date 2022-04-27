factorial <- function(n) {
  if(n <= 1) {
    return(1)
  } else { 
    return(n * factorial(n-1))
  }
}

n = as.integer(readline(prompt = "Enter a Number: "))

f = factorial(n)
print(paste("Factorial of ", n, " is ", f))