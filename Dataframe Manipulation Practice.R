#exploring dplyr
library(dplyr)
gapminder <- read.csv('data/gapminder_data.csv')
str(gapminder)

#using select
gap_select <-gapminder %>% select(year,country,gdpPercap)
str(gap_select)

#using filter
gap_europe <- gapminder %>% filter(continent=="Europe")
head(gap_europe)
str(gap_europe)

# combining select and filter
gap_select_europe <- gapminder %>% filter(continent=="Europe") %>% select(year,country,gdpPercap)

#Challenge 1
gap_select_africa <- gapminder %>% 
  filter(continent=="Africa") %>% 
  select(lifeExp,country,year)

#summarzing data by groups
gdp_byContinent <- gapminder %>%
  group_by(continent) %>%
  summarize(meanGDP = mean(gdpPercap))
str(gdp_byContinent)
gdp_byContinent

#Challenge 2
lifeExp_byCountry <- gapminder %>%
  group_by(country) %>%
  summarize(mean_lifeExp = mean(lifeExp))
lifeExp_byCountry %>%
  filter(mean_lifeExp == min(mean_lifeExp) | mean_lifeExp == max(mean_lifeExp))


   