#File: Probability model
#location: azure cloud
#Course :MS_DataAnalytics
#Section: CA_One_2
#Author: Rajesh Kumar
#Date: 29-10-2020

#3: Selecting column 'X10percentage' for Uniform Distribution becasue all values fall between the min and max and occur with equal likelihood, 
#we consider the uniform distribution for calculating the probability and make a one step ahead prediction.

# Map 1-based optional input ports to variables
employee <- maml.mapInputPort(1) # class: data.frame


cat("\n\n*** Uniform Distribution ***")
cat("\nParameter Estimation Value ")
marks = employee$'10percentage' #creating the variable
# purposing  uniform Model as the variable has continuous value represent the age of the student which is greater than 10.
#parameter estimation.
a = min(marks) #  min value of variable
b = max(marks) #  max value of variable
cat("\nminimum value: ",a)
cat("\nmaximum value: ",b)
# find a next level prediction 
sim = runif (1000,a,b) # Simulation using data value . we can also use '1000' in place of 'age' for simulation to generate random data
#prediction
prediction = round (mean(sim)) 
cat("\n\nPridction Result\n")
cat("prediction value : ", prediction)