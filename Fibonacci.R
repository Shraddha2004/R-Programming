n = as.integer(readline(prompt="How many terms? "))
# first two terms
a = 0
b = 1
count = 2
# check if the number of terms is valid
if(n <= 0) {
  print("Please enter a positive integer")
} else {
  if(n == 1) {
    print("Fibonacci sequence:")
    print(a)
  } else {
    print("Fibonacci sequence:")
    print(a)
    print(b)
    while(count < n) {
      c = a + b
      print(c)
      # update values
      a = b
      b = c
      count = count + 1
    }
  }
}