#File: Box plot technique to find outliers
#location: Azure Cloud
#Course :MS_DataAnalytics
#Section: CA_one_1d
#Author: Rajesh Kumar
#Date: 23-Oct-2020

Student <- maml.mapInputPort(1) # class: data.frame

#create variable for computation
X = Student$age

Q=quantile(X) #calculate middle Quartile
#print(c("middle Quartile:",Q))

cat("\n*** Output ***")
#calculate Lower Quartile
Q_l=Q[2] 
cat("\nLower Quartile : ",Q_l,"\n")

#calculate Upper Quartile
Q_u=Q[4] 
cat("Upper Quartile : ",Q_u,"\n")

#calculate Interquartile Range (IQR): IQR=Qu-Ql
IQR=Q_u-Q_l 
cat("Interquartile Range (IQR) : ",IQR,"\n")

#calculate lower inner fence = Ql-1.5*IQR
L=Q_l-1.5*IQR 

#calculate upper inner fence = Qu+1.5*IQR
U=Q_u+1.5*IQR 
cat("Lower & Upper fence : {",L,U,"}\n")

#outliers detection  
Out=c() 
for(j in 1:length(X)){ 
  if(X[j]<L|X[j]>U){o=X[j]}else{o=NULL} 
  Out=c(Out,o)  
} 
cat("Outliner : {",Out,"}")
