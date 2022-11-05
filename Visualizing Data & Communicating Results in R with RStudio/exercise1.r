# write your code below in RStudio
# then press the Source button to run it

suppressPackageStartupMessages(library(tidyverse))
library(tidyverse)
theme_update(plot.title = element_text(hjust = 0.5))

# add your code below this line

game <- c("Game 1", "Game 2", "Game 3", "Game 4")
score <- c(5, 10, 20, 15)
df <- data.frame(game, score)

chart <- ggplot(df, aes(x = df$game, y = df$score)) +
  geom_bar(stat = "identity") +
  labs(title = "Points Scored for Games 1-4", 
       x = "Game", 
       y = "Score")

# add your code above this line

print(chart)

# add your code above this line

# DO NOT EDIT CODE BELOW THIS LINE

require(png)
png("png/comp/chart1.png", width = 935, height = 455)
plot(chart)
invisible(dev.off())

print(chart)

img1 <- readPNG("png/comp/chart1.png")
img2 <- readPNG("png/comp/exercise1.png")

if((100*sum(img1==img2)/length(img1)) >= 80) {
  print(TRUE)
} else {
  print(FALSE)
}

# DO NOT EDIT CODE ABOVE THIS LINE