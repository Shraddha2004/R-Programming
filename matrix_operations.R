repeat{
  
  print("===Matrix Operations===")
  print("1. Addition")
  print("2. Subtraction")
  print("3. Multiplication")
  print("4. Division")
  print("5. Exit")
  choice <- as.integer(readline(prompt= "Enter your choice : "))
  if(choice == 5){
    break
  }else{
    i <- as.integer(readline(prompt= "Enter row size of matrix : "))
    j <- as.integer(readline(prompt= "Enter col size of matrix : "))
    mat1 <- c()
    print("Enter Matrix1 Elements : ")
    for(k in 1:(i*j)){
      mat1[k] <- as.integer(readline())
    }
    mat1 <- matrix(mat1,i,j)
    print(mat1)
    mat2 <- c()
    print("Enter Matrix2 Elements : ")
    for(l in 1:(i*j)){
      mat2[l] <- as.integer(readline())
    }
    mat2 <- matrix(mat2,i,j)
    print(mat2)
    
    print("**Answer**")
    switch(choice,
           "1" = print(mat1+mat2),
           "2" = print(mat1-mat2),
           "3" = print(mat1*mat2),
           "4" = print(mat1/mat2)
           
           )
  }
}