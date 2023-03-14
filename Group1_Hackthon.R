# Hackthon

library(tidyverse)
library(visdat)


# Data Cleaning and Wrangling

data_2015 <- read_csv("2015.csv")
data_2016 <- read_csv("2016.csv")
data_2017 <- read_csv("2017.csv")
data_2018 <- read_csv("2018.csv")
data_2019 <- read_csv("2019.csv")


vis_miss(raw_data_2015)
## no missing data

data_2015 <- data_2015 %>%
  select(c('Happiness Rank', 'Happiness Score', 'Health (Life Expectancy)')) %>%
  `colnames<-`(c('Happiness_Rank', 'Happiness_Score', 'Health_Life_Expectancy')) %>%
  mutate(Health_Life_Expectancy = factor(Health_Life_Expectancy))


# Data visualization

data_2015 %>%
  ggplot(aes(x = Health_Life_Expectancy, y = Happiness_Score)) +
  geom_point(aes(colour = Happiness_Rank)) +
  geom_smooth(se = FALSE) +
  theme(text = element_text(size = 13)) +
  theme_minimal() + 
  labs(x = "Life Expectancy",
       y = "Happiness Score", 
       colour = "Rank")

#correlation
cor(my_data$Health_Life_Expectancy, my_data$Happiness_Score)
