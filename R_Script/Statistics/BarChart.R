#File: BarChart.R
#location: #file/Users/rajeshkumar/MS_Assignment/R_Script/Statistics
#Course :MS_DataAnalytics
#Section: Bar Graph plot
#Author: Rajesh Kumar
#Date: 18-Oct-2020

#clear existing plots if any
dev.off()

#load dataset
library(datasets)

#Load Data
head(mtcars)

#plot the graph using inbuild barplot() function

#barplot(mtcars$cyl) #freequency for each category

#create a dummy table with freequency for each category

cylinder <- table(mtcars$cyl)  #table created 
#graph plot 
barplot(cylinder,
        col = "#5C987E", #hexa code
        main = "mtcars:cars based on cylinder", #graph heading
        xlab = "Number of Cylinder", #X legend
        ylab = "Cars" #Y legend
        
        )

#detach Dataset

detach("package:dataset",unload = TRUE)

#clear Terminal

cat("\014")




