#File: ggplot
#location: Azure Cloud
#Course :MS_DataAnalytics
#Section: CA_one_1b
#Author: Rajesh Kumar
#Date: 25-Oct-2020

library(ggplot2) #use library for ggplot 

# Map 1-based optional input ports to variables
Student <- maml.mapInputPort(1) # class: data.frame

#create a table for School
tbl <- table(Student$school)

#assign the table to a data frame
df = as.data.frame.table(tbl)

#set the GGplot theme
theme_set(theme_classic())
#plot the graph using ggplot library
graph <- ggplot(Student, aes(school))
graph + geom_bar(aes(fill=sex), width = 0.5) + 
  theme(axis.text.x = element_text(angle=65, vjust=0.6)) +
  labs(title="Categorywise Bar Chart", 
       subtitle="School Vs Student Count", 
       caption="Source: count by School from 'Student' dataset")

