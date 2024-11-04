#Script to plot the logistic growth data

growth_data <- read.csv("experiment.csv") #changed ("") to csv file

install.packages("ggplot2")
library(ggplot2)

ggplot(aes(t,N), data = growth_data) + #changed data to "growth_data"
  
  geom_point() +
  
  xlab("t") +
  
  ylab("y") +
  
  theme_bw()
#graph shows normal logistic growth curve

ggplot(aes(t,N), data = growth_data) + #changed t,??? to t,N
  
  geom_point() +
  
  xlab("t") +
  
  ylab("y") +
  
  scale_y_continuous(trans='log10')
#graph shows straight slope, thn plateau (lines up with initial exponential growth)
