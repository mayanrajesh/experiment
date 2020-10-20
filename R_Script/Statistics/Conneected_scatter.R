#File: connected_scatterplot.R
#location: #file/Users/rajeshkumar/MS_Assignment/R_Script/Statistics
#Course :MS_DataAnalytics
#Section: connected_scatterplot
#Author: Rajesh Kumar
#Date: 20-Oct-2020

# Libraries
library(ggplot2)

#clear existing plots if any
dev.off()


# Load dataset from github
df <- read.table("https://raw.githubusercontent.com/holtzy/data_to_viz/master/Example_dataset/3_TwoNumOrdered.csv", header=T)
df$date <- as.Date(df$date)

# Plot the graph
df %>%
  tail(500) %>%
  ggplot( aes(x=date, y=value)) +
  geom_line( color="grey") +
  geom_point(shape=21, color="black", fill="#69b3a2", size=0) +
  theme_ipsum() +
  ggtitle("Evolution of bitcoin price") 
  
#detach Dataset

detach("package:dataset",unload = TRUE)

#clear Terminal

cat("\014")
