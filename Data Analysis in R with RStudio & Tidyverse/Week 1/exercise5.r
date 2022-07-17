suppressPackageStartupMessages(library(tidyverse))

# write your code within the designated space below
# then press the TRY IT button per instruction
# to see the result of your code

##DO NOT EDIT#################
library(tidyverse)           #
args <- commandArgs(TRUE)    #
x <- as.numeric(args[1:4])   #
y <- as.numeric(args[5:8])   #
##############################

# add your code below this line
max(x)-min(x) <= max(y)-min(y)


# add your code above this line