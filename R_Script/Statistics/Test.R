#File: Test.R
#location: #file/Users/rajeshkumar/MS_Assignment/R_Script/Statistics
#Course :MS_DataAnalytics
#Section: Basic Graph plot
#Author: Rajesh Kumar
#Date: 18-Oct-2020

#load dataset
library(datasets) #load base package dataset.

#Load Data
head(iris)

#plot the graph using inbuild PLOT() function

plot(iris$Species)  #Categorial Variable

#Quantatative variable
plot(iris$Petal.Length , iris$Petal.Width, 
     col = "#065096" , #Hexa color code
     pch = 20 , #solid point
     main = "Iris: Petal length Vs Width",
     xlab= "Length",
     ylab = "Width"
)

#catogrical * Quantatative Variable 
plot(iris$Species,iris$Sepal.Length,
     col= "#065096" , #Hexa color code
     main = "Iris: species Vs Sepal.Length",
     xlab="Species",
     ylab="Sepal.Length"
     )

#detach dataset
detach("package:dataset",unload = TRUE)

#clear console
cat("\014") #ctrl+L