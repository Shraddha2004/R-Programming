i <- as.integer(readline(prompt= "Enter row size of matrix : "))
j <- as.integer(readline(prompt= "Enter col size of matrix : "))
mat <- c()
print("Enter Matrix Elements : ")
for(k in 1:(i*j)){
  mat[k] <- as.integer(readline())
}
mat <- matrix(mat,i,j)
print(mat)