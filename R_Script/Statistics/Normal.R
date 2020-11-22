#File: Probability model
#location: azure cloud
#Course :MS_DataAnalytics
#Section: CA_One_2
#Author: Rajesh Kumar
#Date: 29-10-2020

#2: "selecting column 'collageGPA' for normal distribution because Approximately 68% of the values fall between the mean and one standard deviation
#so implementing binomial model for probability computation and one step ahead prediction.

# Map 1-based optional input ports to variables
employee <- maml.mapInputPort(1) # class: data.frame

cat("\n\n*** Normal Distribution ***")
cat("\nParameter Estimation Value")

gpa= employee$collegeGPA #creating the variable
#parameter estimation.
mu=mean(gpa)
sigma= sd(gpa)
cat("\nmu : ",mu)
cat("\nsigma : ",sigma)
# find a next level prediction 
sim = rnorm (1000,mu,sigma) # Simulation using data value.we can also use '1000' in place of 'gpa' for simulation to generate random data
#prediction
prediction = round (mean(sim)) 
cat("\n\nPridction Result\n")
cat("prediction value : ", prediction)