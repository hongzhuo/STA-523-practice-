####EVERYTHING IS A VECTOR
## Vectors (atomic vectors): 
##collections of values that are all of the same type
## (e.g.all logical values, all numbers, or all character strings)
## Lists (generic vectors): collections of any type of R object 
## (meaning they can have a hierarchical/treelike structure)

## vectorised: able to handle if x and y are vectors
## not vectorised: only look at the first value in your vector



#### CONDITIONALS
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
# length(): how many elements it contains
# sep: the field separator character
# Values on each line of the file are separated by this character
# sep = "": the separator is ???white space???
# that is one or more spaces, tabs, newlines or carriage returns
for(y in list(1:3, LETTERS[1:7], c(TRUE,FALSE)))
{
  cat(length(y)," ",sep="")
}

## Storing results
# It is almost always better to create an object 
# to store your results first, rather than 
# growing the object as you go.
# rep(x, ...): replicates the values in x
# It is a generic function
# DEFAULT: rep(x, times = 1, length.out = NA, each = 1)
# "x" is a vector
# "times" is a integer vector giving the (non-negative) number 
# of times to repeat each element if of length length(x)
# "length.out" is a non-negative integer
# the desired length of the output vector
# ignored if NA or invalid
# "each" is a non-negative integer
# Every element of x is repeated "each" times
# Other inputs will be coerced to an integer vector 
# and the first element taken
# Treated as 1 if NA or invalid.
res = rep(NA,10)
for(x in 1:10)
{
  res[x] = x^2
}
res


## Alternative loops - while
## Repeat until the given condition is not met 
## (i.e. results in FALSE)
i = 1
res = rep(NA,10)
while (i <= 10)
{
  res[i] = i^2
  i = i+1
}
res


## Alternative loops - repeat
## Repeat until break
i = 1
res = rep(NA,10)
repeat
{
  res[i] = i^2
  i = i+1
  if (i > 10)
    break
}
res


## Special keywords - break and next
## break - ends the current (inner-most) loop
## next - ends the current 

for(i in 1:10)
{
  if (i %% 2 == 0)
    break
  cat(i,"")
}

for(i in 1:10)
{
  if (i %% 2 == 0)
    next
  cat(i,"")
}

## Back to for loops
## use a loop across the indexes of an object 
## and not the elements themselves
# seq(...)
# Default S3 method:
# seq(from = 1, to = 1, by = ((to - from)/(length.out - 1)),
# length.out = NULL, along.with = NULL, ...)
# seq.int(from, to, by, length.out, along.with, ...)
# seq_along(along.with)
# seq_len(length.out)
# "from, to": the starting and (maximal) end values of the sequence
# Of length 1 unless just from is supplied as an unnamed argument
# "by" is a number: increment of the sequence
# "length.out" is the desired length of the sequence
# "along.with" takes the length from the length of this argument

# seq_along(x) takes a vector for x
# and it creates a sequence upto the count of elements in the vector
# seq_len(y) takes numeric for y
# it creates a sequence upto the number y

a <- c(8, 9, 10)
b <- c(9, 10)
c <- 10
seq(a)
seq(b)
seq(c)
seq_along(a)
seq_along(b)
seq_along(c)
seq_len(a)
seq_len(b)
seq_len(c)

## Looping over element indices
good = function(x)
{
  for(i in seq_along(x))
    cat(1,"")
}



#### FUNCTIONS
## Function Basics
f = function(x) x*x
list(f)
# typeof(f)
typeof(f)
# Similarly, functions can return other functions (functor)
f2 = function(x) function(y) x+y
f2(1)




