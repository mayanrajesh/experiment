#File: Goodness_Of_Fit_Test
#location: azure cloud
#Course :MS_DataAnalytics
#Section: CA_One_3
#Author: Rajesh Kumar
#Date: 20-11-2020

# Map 1-based optional input ports to variables
data <- maml.mapInputPort(1) # class: data.frame
cat("\n***Goodness Of Fit Test***\n\n")

#Set The Hypothesis
cat("H0: P1=1/4, P2=1/4, P3=1/4, P4=1/4 \n")
cat("H1: Not H0")
#creating variable using categotical data
x=as.integer(factor(data$Degree))
O=table(x)#Observation Value
cat("\nObservation value of Degree \n")
O
#p1=p2=p3=p4=1/4
#set alpha(given)
alpha=0.05
#calculate Expectation Value
E=sum(O)*rep(1/4,4)
cat("\nExpectation value of Degree\n")
cat(E)
cat("\n\nAlpha :",alpha)

#Calculate Test Value
Test_value=sum((O-E)^2/E)
cat("\nTest Value : ",Test_value)

#Calculate Critical Value
C_value = qchisq(0.95,3)
cat("\nCritical Value : ",C_value)

#Conclusion or Verdict
cat("\nConclusion/Verdict : ")
if (Test_value > C_value) {
  cat("Since Test_value > C_value hence, 'Rejecting H0'") 
} else {
  print("Since Test_value <= C_value hence, 'Accept H0")
}
