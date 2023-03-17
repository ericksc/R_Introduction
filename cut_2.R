x <- c(12, 1, 25, 12, 65, 2, 6, 17)

cut(x, breaks = c(0, 3, 12, 15, 20, 80),
    labels = c("First", "Second", "Third", "Fourth", "Fifth"))

# Equivalent to
c <- cut(x, breaks = c(0, 3, 12, 15, 20, 80))
levels(c) <- c("First", "Second", "Third", "Fourth", "Fifth")
