#install.packages("tidyverse")

library(ggplot2)

# Mostrar el dataset
mpg

# grafico 1
ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy, color = class))


# grafico 2
ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy, size = class))


# grafico 3
ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy, alpha = class))

# grafico 4
ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy, shape = class))


# grafico 5
ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy)) +
  facet_wrap(~ class, nrow = 2)

# grafico 6
ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy)) +
  facet_grid(drv ~ cyl)