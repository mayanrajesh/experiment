#File: ggplot
#location: Azure Cloud
#Course :MS_DataAnalytics
#Section: CA_one_1b
#Author: Rajesh Kumar
#Date: 25-Oct-2020

library(ggplot2)
library(plyr) 

# Map 1-based optional input ports to variables
data <- maml.mapInputPort(1) # class: data.frame

employee= ddply(data, .(Degree), summarize,  Salary=mean(Salary))
ggplot(data=employee, aes(x=Degree, y=Salary)) +
  geom_bar(stat="identity",fill="steelblue",width = 0.8)+
  labs(title="Employee Average Salary based on Degree ")