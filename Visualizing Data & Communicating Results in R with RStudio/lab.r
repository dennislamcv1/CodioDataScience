# write your code below in RStudio
# then press the Source button to run it

suppressPackageStartupMessages(library(tidyverse))
library(tidyverse)
theme_update(plot.title = element_text(hjust = 0.5))

# add your code below this line

d <- read.csv("data/fandango.csv")
df = d[c('FILM', 'RottenTomatoes', 'RottenTomatoes_User')]
df$Average = (df$RottenTomatoes + df$RottenTomatoes_User) / 2
df2 = df[order(-df$Average), ]
top_10 <- df2[1:10,]

top_10_film <- rep(top_10$FILM, each = 3)
category <- rep(c("rotten_tomatoes", 
                  "rotten_tomatoes_user", 
                  "rotten_tomatoes_avg"), 10)

top_10_score <- top_10[-1]

score <- as.vector(t(top_10_score))

df2 <- data.frame(top_10_film, category, score)



chart <- ggplot(df2, aes(x = top_10_film, y = score, fill = category, label = score)) +
  geom_bar(position = "stack", stat = "identity") +
  labs(title = "Highest Average Scoring Movies",
       x = "Film",
       y = "Scores",
       fill = "Category") +
  geom_text(size = 4, position = position_stack(vjust = 0.5)) +
  coord_flip()

print(chart)


# add your code above this line

# DO NOT EDIT CODE BELOW THIS LINE

require(png)
png("png/lab/chart.png", width = 935, height = 455)
plot(chart)
invisible(dev.off())

print(chart)

img1 <- readPNG("png/lab/chart.png")
img2 <- readPNG("png/lab/lab.png")

if((100*sum(img1==img2)/length(img1)) >= 80) {
  print(TRUE)
} else {
  print(FALSE)
}

# DO NOT EDIT CODE ABOVE THIS LINE