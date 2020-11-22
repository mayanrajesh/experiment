#File: Test_Of_Independent
#location: azure cloud
#Course :MS_DataAnalytics
#Section: CA_One_3
#Author: Rajesh Kumar
#Date: 20-11-2020

# Map 1-based optional input ports to variables
data <- maml.mapInputPort(1) # class: data.frame
cat("\n***Test Of Independent***\n\n")
#set Hypothesis
cat("H0: Degree and Gender are independent\n")
cat("H1: Not in H0")

#creating variable based on Degree and Gender
x1=as.integer(factor(data$Degree))
x2=as.integer(factor(data$Gender))
#table(x1)
#table(x2)

#Observation Value in matrix
O=table(x1,x2)
cat("\nObservation value \n")
O
#Expectation Value
E=matrix(NA,4,2)
for (i in 1:4){
  for(j in 1:2){
    E[i,j]=(sum(O[i,])*sum(O[,j]))/nrow(data)
  }
}
cat("\nExpectation Value\n")
E

#Alpha(Given)
alpha= 0.01
cat("\nAlpha : ",alpha)

#Calculate Test Value
Test_value=sum((O-E)^2/E)
cat("\nTest Value : ",Test_value)
#Degree of Freedom
df=3 # (4-1)*(2-1)

#Calculate Critical Value
C_value=qchisq(.99,df)
cat("\nCritical Value : ",C_value)
#Conclusion/Verdict
cat("\nConclusion/Verdict : ")
if (Test_value > C_value) {
  cat("Since Test_value > C_value hence, 'Rejecting H0'") 
} else {
  cat("Since Test_value < C_value hence, 'Accept H0'")
}