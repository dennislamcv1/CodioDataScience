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
df1 <- head(csv, n = 2)
df2 <- tail(csv, n = 3)
df <- rbind(df1, df2)


# add your code above this line

print(df, row.names = FALSE)