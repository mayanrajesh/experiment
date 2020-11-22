#File: Compute central & variational measures 
#location: Azure Cloud
#Course :MS_DataAnalytics
#Section: CA_one_1b
#Author: Rajesh Kumar
#Date: 20-Oct-2020
# Map 1-based optional input ports to variables
data <- maml.mapInputPort(1) # class: data.frame

#create variable for computation
GPA = data$collegeGPA

#Calculate central Measures
cat("\n*** Central Measures ***")
#Calculate mean
central_mean = mean(GPA)
cat("\nMean : " , central_mean,"\n")
#calculate median
central_median = median(GPA)
cat("Median : ", central_median,"\n")
#calculate mode
mode = function(v)     ## mode
{
  uniqv = unique(v)
  uniqv[which.max(tabulate(match(v, uniqv)))]
}
central_mode = mode(GPA) 
cat("Mode : ", central_mode,"\n")
#Calculate variational measures 
cat("\n*** Variational Measures ***")
#calculate Range
R=range(GPA) 
Range=R[2]-R[1]
cat("\nRange of R[2] - R[1] : ",Range,"\n")
#calculate Variance
variance=var(GPA)
cat("Variance : ", variance,"\n")
#Calculate Standard Deviation 
S=sd(GPA)
cat("Standard Deviation : ",S)



