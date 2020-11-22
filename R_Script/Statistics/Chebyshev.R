#File: Chebyshev's rule (one sigma) to find outlier
#location: Azure Cloud
#Course :MS_DataAnalytics
#Section: CA_one_1c
#Author: Rajesh Kumar
#Date: 22-Oct-2020

# Map 1-based optional input ports to variables
data <- maml.mapInputPort(1) # class: data.frame

X=data$collegeGPA #collage GPA of student 

cat("\n*** Output ***\n")
#calculate Mean 
xbar=mean(X)
cat("Mean  : ",xbar,"\n")

#calculate Standard Deviation
S=sd(X)
cat("Standard Deviation : ",S,"\n")

# one sigma interval estimation 

#calculate lower inner fence
L=xbar-S 

#calculate upper inner fence
U=xbar+S
cat("Interval : {",L,U,"}\n")

#find the outliers if any
Out=c() 
for(j in 1:length(X)){ 
  if(X[j]<L|X[j]>U){o=X[j]}else{o=NULL} 
  Out=c(Out,o) 
} 
cat("Outliers : {",Out,"}")