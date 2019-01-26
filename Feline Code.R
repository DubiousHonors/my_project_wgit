#enter a comment
#comments are useful for my code to be more easily read by me and my friends

#initiate or create new variable called cats
cats <- data.frame(coat = c("calico", "black", "tabby"),
                   weight = c(2.1, 5.0, 3.2),
                   likes_string = c(1, 0, 1))

#write cats to new fiel called feline-data.csv
write.csv(x = cats, file = "data/feline-data.csv", row.names = FALSE)