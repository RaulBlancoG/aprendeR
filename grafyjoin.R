knitr::opts_chunk$set(echo = TRUE)
library(dplyr)
library(ggplot2)

mtcars%>%
  ggplot(aes(cyl,mpg)) + 
  geom_violin(aes(group=cyl,
                  color=cyl)) +
  theme_bw()

mtcars%>%
  ggplot(aes(gear ,carb)) + 
  geom_jitter() +
  theme_bw()

mtcars%>%
  ggplot(aes(hp)) +
  geom_dotplot() +
  theme_bw()

mtcars%>%
  ggplot(aes(wt,disp)) +
  geom_bin2d() +
  theme_classic()

mtcars%>%
  ggplot(aes(carb)) +
  geom_bar(aes(fill=carb)) +
  theme_bw()
#no puedo hacer que las barras cambien de color :(

library(readr)
superheroes <- '
   name, alignment, gender,         publisher
Magneto,       bad,   male,            Marvel
Storm,      good, female,            Marvel
Mystique,       bad, female,            Marvel
Batman,      good,   male,                DC
Joker,       bad,   male,                DC
Catwoman,       bad, female,                DC
Hellboy,      good,   male, Dark Horse Comics
'
superheroes <- read_csv(superheroes, trim_ws = TRUE, skip = 1)

publishers <- '
publisher, yr_founded
DC,       1934
Marvel,       1939
Image,       1992
'
publishers <- read_csv(publishers, trim_ws = TRUE, skip = 1)

uno<- inner_join(superheroes,publishers)
dos<- full_join(superheroes,publishers)
tres<- anti_join(publishers,superheroes)
# 4.- es el caso de "dos". 
#Lo que hace es hacer un match de las
#respectivas tablas, 
#es por eso que en el caso del
#publisher image los espacios de 
#superheroes son rellenados con NA, 
#ya que no hay datos de estos en 
#nunguna de las tablas, es decir, 
#no hay un match


