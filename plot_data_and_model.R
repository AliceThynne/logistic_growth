#Script to plot data and model

growth_data <- read.csv("experiment.csv") #changed ("") to experiment.csv

logistic_fun <- function(t) {
  
  N <- (N0*K*exp(r*t))/(K-N0+N0*exp(r*t))
  
  return(N)
  
}

N0 <- 879 #changed number based on raw data
  
r <- 0.01 #changed number based on fit_linear_model answers
  
K <- 60000000000 #changed number based on graph plateau point

ggplot(aes(t,N), data = growth_data) + #changes aes() to t,N
  
  geom_function(fun=logistic_fun, colour="red") +
  
  geom_point()
#model line lines uo with actual data, meaning that our predicted parameters are correct!
  #scale_y_continuous(trans='log10')


#making a text file of all pacakges used
sink(file = "package-versions.txt")
sessionInfo()
sink()
git config --global user.email "alice.thynne@icloud.com"




