library(nycflights13)
library(tidyverse)

#flights


filter(flights, month == 1, day == 1)

jan1 <- filter(flights, month == 1, day == 1)


(dec25 <- filter(flights, month == 12, day == 25))

filter(flights, month == 11 | month == 12)

nov_dec <- filter(flights, month %in% c(11, 12))

filter(flights, !(arr_delay > 120 | dep_delay > 120))
filter(flights, arr_delay <= 120, dep_delay <= 120)

arrange(flights, year, month, day)
arrange(flights, desc(arr_delay))