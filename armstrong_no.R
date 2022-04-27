# take input
n = as.integer(readline(prompt="Enter a number: "))
sum = 0
# find the sum of the cube of each digit
temp = n
while(temp > 0) {
  digit = temp %% 10
  sum = sum + (digit ^ 3)
  temp = floor(temp / 10)
}
# display the result
if(n == sum) {
  print(paste(n, "is an Armstrong number"))
} else {
  print(paste(n, "is not an Armstrong number"))
}