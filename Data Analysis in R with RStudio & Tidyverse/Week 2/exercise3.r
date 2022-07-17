suppressPackageStartupMessages(library(tidyverse))

# write your code within the designated space below
# then press the TRY IT button per instruction
# to see the result of your code

##DO NOT EDIT#################
library(tidyverse)           #
args <- commandArgs(TRUE)    #
csv <- read.csv(args[1])     #
##############################

# add your code below this line

print(csv[0:2], row.names = FALSE)

# add your code above this line