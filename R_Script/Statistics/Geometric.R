#File: Probability model
#location: azure cloud
#Course :MS_DataAnalytics
#Section: CA_One_2
#Author: Rajesh Kumar
#Date: 01-11-2020

# Map 1-based optional input ports to variables
Engineer <- maml.mapInputPort(1) # class: data.frame

X=Engineer$CollegeTier
hist(X)
tab_values=table(Engineer$CollegeTier)#Find the number of unique values present in collegetier field

cat("\n\n*** Geometric Distribution ***")
cat("\nParameter Estimation Value ")

#Consider the p(x<=2),then the value of x can we consider in the interval of (0:2)
s =(0:2) # x value
p =1/length(tab_values) #probability of collegetier field value.

cat("\nprobability of collegetier : ",p)

#since we have the probalibility of getting the engineer in tier 1 and tier as p(x<=2),cumulative frequency is consider to be calculated.
#cdf{probalbility distribution function can we verified using this pbinom command:}
cdf=pgeom(0:2,p,lower.tail = TRUE,log.p = FALSE)
cat("\ncumulative frequency : ",cdf)

#prediction
cat("\n\nPridction Result\n")
prediction=round(mean(cdf))
cat('The prediction value for tier selection for engineer is:',prediction)