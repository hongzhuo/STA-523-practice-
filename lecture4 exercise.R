####EVERYTHING IS A VECTOR


## vectorised: able to handle if x and y are vectors
## not vectorised: only look at the first value in your vector


## Learning logic "or" "and" "exclusive or"
#c() is a vector
x = c(TRUE, FALSE, TRUE)
y = c(FALSE, TRUE, TRUE)
# x | y : output TRUE if at least one is TRUE
x | y
# x || y : only the 1st element in the output vector
x || y
# x & y : output FALSE if at least one is FALSE
x & y
# x && y: only the 1st element in the output vector
x && y
# xor (x,y): output TRUE only when inputs differ
xor(x,y)


## Length coercion
#if y is shorter than x, than repeat y 
#until is is the same length as x
o = c(TRUE, FALSE, TRUE)
p = c(FALSE, TRUE)
q = c(TRUE)
o | p
# Warning message: In o | p : longer object length
# is not a multiple of shorter object length
# p is treated as (FALSE, TRUE, FALSE)
o | q
# q is treated as (TRUE, TRUE, TRUE)
o & p
# Warning message: In o & p : longer object length
# is not a multiple of shorter object length

## Comparsion
x= c("A","B","C")
y= c("A")
# x == y: x equals to y
#ATTENTION: "==" v.s "="
x == y
# x!= y: x not equals to y
x != y
# x < y: x is less than y
# x > y: x is greater than y
# x <= y: x is less than or equal to y
# x >= y: x is greater than or equal to y
# compare letters: A < B < C <.. < a < b
x < y
x > y
x <= y
x >= y
# x %in% y: x contains y
x %in% y
y %in% x


## Conditional Control Flow - if
x = c(3,4)
if (3 %in% x)
  print("Here!")
if (x >= 2)
  print("Now Here!")
# Warning message: the condition has length > 1 
# and only the first element will be used

# any: output true if at least one input is true
# all: output true if all the inputs are true
if (any(x >= 2))
  print("Now There!")


## Nesting Conditionals - if, else if, and else
x = 3
if (x < 0) {
  print("Negative")
} else if (x > 0) {
  print("Positive")
} else {
  print("Zero")
}

x = 0
if (x < 0) {
  print("Negative")
} else if (x > 0) {
  print("Positive")
} else {
  print("Zero")
}

#### LOOPS

## for loops
#given a vector iterate through the elements 
#and evaluate the code block for each.
for(x in 1:10)
{
  cat(x^2," ", sep="")
}

for(y in list(1:3, LETTERS[1:7], c(TRUE,FALSE)))
{
  cat(length(y)," ",sep="")
}



