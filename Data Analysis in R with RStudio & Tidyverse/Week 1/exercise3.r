suppressPackageStartupMessages(library(tidyverse))

# write your code within the designated space below
# then press the TRY IT button per instruction
# to see the result of your code

##DO NOT EDIT################
library(tidyverse)          #
args <- commandArgs(TRUE)   #
a <- as.numeric(args[1])    #
b <- as.numeric(args[2])    #
#############################

# add your code below this line
sum = a+b
print(sum)

x = c(a,b)
average = mean(x)
print(average)

