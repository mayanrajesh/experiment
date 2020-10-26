#File: Compute central & variational measures 
#location: Azure Cloud
#Course :MS_DataAnalytics
#Section: CA_one_1b
#Author: Rajesh Kumar
#Date: 20-Oct-2020

# Map 1-based optional input ports to variables
Student <- maml.mapInputPort(1) # class: data.frame

#create variable for computation
age = Student$age

#Calculate central Measures

cat("\n*** Central Measures ***")
#Calculate mean
central_mean = mean(age)
cat("\nMean : " , central_mean,"\n")

#calculate median
central_median = median(age)
cat("Median : ", central_median,"\n")

#calculate mode
#central_mode = mode(age)
mode = function(v)     ## mode
{
  uniqv = unique(v)
  uniqv[which.max(tabulate(match(v, uniqv)))]
}
central_mode = mode(age) 
cat("Mode : ", central_mode,"\n")


#Calculate variational measures 

cat("\n*** Variational Measures ***")
#calculate Range
R=range(age) 
Range=R[2]-R[1]
cat("\nRange of R[2] - R[1] : ",Range,"\n")

#calculate Variance
variance=var(age)
cat("Variance(s^2) : ", variance,"\n")

#Calculate Standard Deviation 
S=sd(age)
cat("Standard Deviation : ",S)

