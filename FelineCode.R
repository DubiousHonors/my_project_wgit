cats <- data.frame(coat = c("calico", "black", "tabby"), 
                   weight = c(2.1, 5.0,3.2), 
                   likes_string = c(1, 0, 1))
write.csv(x = cats, file = "data/feline-data.csv", row.names = FALSE)
age <- c(2, 3, 5)
cats <- cbind(cats, age)
cats
newRow <- list("tortoiseshell", 3.3, TRUE, 9)
cats <- rbind(cats, newRow)
levels(cats$coat)
levels(cats$coat) <- c(levels(cats$coat), "tortoiseshell")
cats <- rbind(cats, list("tortoiseshell", 3.3, TRUE, 9))
str(cats)
cats[-4, ]
cats <- cats[-4, ]
rownames(cats) <- NULL

df <- data.frame(id = c("a", "b", "c"),
                 x = 1:3,
                 y = c(TRUE, TRUE, FALSE),
                 stringsAsFactors = FALSE)
df <- data.frame(first = c("Jeff"),
                 last = c("Bellomi"),
                 lucky_number = c(13),
                 stringsAsFactors = FALSE)

gapminder <- read.csv("data/gapminder_data.csv")
str(gapminder)
head(gapminder)

x <- c(5.4, 6.2, 7.1, 4.8, 7.5)
names(x) <- c('a', 'b', 'c', 'd', 'e')
x[c(FALSE, FALSE, TRUE, FALSE, TRUE)]

#use to see column names
names(gapminder)

library("ggplot2")
ggplot(data = gapminder, aes(x = year, y = lifeExp, by=country)) + 
  geom_line(aes(color=continent)) + geom_point()

ggplot(data = gapminder, aes(x = gdpPercap, y = lifeExp, color = continent)) +
  geom_point(alpha = .5, size = 3, shape = 17) + scale_x_log10() + 
  geom_smooth(method = "lm")


starts.with <- substr(gapminder$country, start = 1, stop = 1)
az.countries <- gapminder[starts.with %in% c("A", "Z"), ]
ggplot(data = az.countries, aes(x = year, y = lifeExp, color=continent)) +
  geom_line() + facet_wrap( ~ country)
