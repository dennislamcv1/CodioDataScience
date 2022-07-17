# write your code below in RStudio
# then press the Source button to run it

library(tidyverse)

# add your code below this line
d <- read.csv("data/biostats.csv")

h <- d$Height..in.
w <- d$Weight..lbs.
df <- data.frame(h, w)

print(dim(df))



# add your code above this line
print(str(df))

print(quantile(h))

print(quantile(w))
