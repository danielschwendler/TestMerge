# Load Data ---------------------------------------------------------------
library(ggplot2) #load package ggplot for visuals and diamonds dataset
library(dplyr)

diamonds <- ggplot2::diamonds #extract diamonds from package

summary(diamonds) #print summary of diamonds to console


# EDA ---------------------------------------------------------------------

diamonds %>%
  summarise(mean = mean(price), sd = sd(price), median = median(price)) 

diamonds %>%
  group_by(cut) %>%
  summarise(counts = n()) 

diamonds %>%
  group_by(cut) %>%
  summarise(counts = n() / nrow(diamonds)) 


# ggplots -----------------------------------------------------------------

ggplot(data = diamonds, aes(x = color, fill = cut)) +
  geom_bar()

ggplot(data = diamonds, aes(x = depth, fill = cut)) +
  geom_histogram(binwidth = 0.2)

ggplot(data = diamonds, aes(x = depth)) +
  geom_histogram(binwidth = 0.2) +
  facet_wrap(~ cut)