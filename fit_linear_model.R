#Script to estimate the model parameters using a linear approximation
install.packages("dplyr")
library(dplyr)

growth_data <- read.csv("experiment.csv") #changed ("") to experiment.csv

#Case 1. K >> N0, t is small

data_subset1 <- growth_data %>% filter(t<1500) %>% mutate(N_log = log(N)) #changed filter(t<?) to (t<1500)
#t < 1500 was chosen as this is biggest time at which growth is still exponential
model1 <- lm(N_log ~ t, data_subset1)
summary(model1)
#states slope as 0.01

#Case 2. N(t) = K

data_subset2 <- growth_data %>% filter(t>2500) #changed t to be >2400
#t>2500 was chosen based on graph, as graph plateaus after this point
model2 <- lm(N ~ 1, data_subset2)
summary(model2)
#intercept = 6e+10 (aka 6 x 10^10)

