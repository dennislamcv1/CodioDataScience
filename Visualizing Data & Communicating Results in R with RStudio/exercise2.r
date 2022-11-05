# write your code below in RStudio
# then press the Source button to run it

suppressPackageStartupMessages(library(tidyverse))
library(tidyverse)
theme_update(plot.title = element_text(hjust = 0.5))

# add your code below this line

work <- c(rep("Paid Care Work", 2) , rep("Unpaid Care Work", 2))
gender <- rep(c("Men", "Women"), 2)
count <- c(322, 183, 83, 265)
df <- data.frame(work, gender, count)

chart <- ggplot(df, aes(x = work, y = count, fill = gender)) + 
  geom_bar(position = "stack", stat = "identity") +
  labs(title = "Minutes per Day Spent on\nPaid vs. Unpaid Care Work",
       x = "Type of Work",
       y = "Count",
       fill = "Gender")

# add your code above this line

# DO NOT EDIT CODE BELOW THIS LINE

require(png)
png("png/comp/chart2.png", width = 935, height = 455)
plot(chart)
invisible(dev.off())

print(chart)

img1 <- readPNG("png/comp/chart2.png")
img2 <- readPNG("png/comp/exercise2.png")

if((100*sum(img1==img2)/length(img1)) >= 80) {
  print(TRUE)
} else {
  print(FALSE)
}

# DO NOT EDIT CODE ABOVE THIS LINE