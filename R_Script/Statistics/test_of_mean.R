#File: Test_of_mean
#location: azure cloud
#Course :MS_DataAnalytics
#Section: CA_One_3
#Author: Rajesh Kumar
#Date: 20-11-2020

# Map 1-based optional input ports to variables
data <- maml.mapInputPort(1) # class: data.frame

cat("\n***Test Of Mean***\n\n")
#set Hypothesis
cat("H0 <= mu0(74) \n")
cat("H1 > mu0(74) \n")

#creating variable
x=data$'10percentage'
#hist(data$X10percentage)
#xbar value
xbar=mean(x)
#mu value -->μ is the theoretical value
Mu0=74 # xbar*(95/100)
#N sample size
n=nrow(data)
#Standard deviation
s=sd(x)

#Alpha is given 0.05
alpha = 0.05
cat("Alpha : ",alpha)
#Calculate Test Value
test_value= (xbar-Mu0)/(s/sqrt(n))
cat("\nTest Value : ",test_value)

#Calculate Critical Value |z(1-(alpha))|
cvalue=qnorm(1-(alpha))
cat("\nCritical Value : ",cvalue)
#Conclusion/Verdict
cat("\nConclusion/Verdict : ")
if (test_value > cvalue) {
  cat("Since Test_value > C_value hence, 'Rejecting H0'") 
} else {
  cat("Since Test_value <= C_value hence, 'Accept H0'")
}

