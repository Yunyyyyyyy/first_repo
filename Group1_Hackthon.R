# Hackthon

library(tidyverse)
library(visdat)
library(magrittr)

data_2015 <- read_csv("2015.csv")
data_2016 <- read_csv("2016.csv")
data_2017 <- read_csv("2017.csv")
data_2018 <- read_csv("2018.csv")
data_2019 <- read_csv("2019.csv")


vis_miss(raw_data_2015)
# no missing data

raw_data_2015 %<>%
  select(c('Happiness Rank', 'Happiness Score', 'Health (Life Expectancy)')) %>%
  `colnames<-`(c('Happiness_Rank', 'Happiness_Score', 'Health_Life_Expectancy')) %>%
  mutate(Health_Life_Expectancy = factor(Health_Life_Expectancy))


