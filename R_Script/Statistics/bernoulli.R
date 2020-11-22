#File: Probability model
#location: azure cloud
#Course :MS_DataAnalytics
#Section: CA_One_2
#Author: Rajesh Kumar
#Date: 29-10-2020

# Map 1-based optional input ports to variables
employee <- maml.mapInputPort(1) # class: data.frame

#Column Selection for probability model:
#1: "selecting column 'CollegeCityTier' because as per ther database model outcome of the data is binary either its true or false. 
#so proposing Bernoulli model for probability computation and one step prediction.
cat("\n\n*** Bernoulli Distribution ***")
cat("\nParameter Estimation Value ")

city<- employee$CollegeCityTier
#parameter estimation.
data = table(city)
phat=data/sum(data)
cat("\nphat corresponding to '0' and '1': ",phat)
#find a prediction 
simulation =rbinom(1000,1,phat) # simulation based on the dataset sample data. we can also simulate based on 1000 sample is there is no data available to generate the random simulation.
prediction = round(mean(simulation))
cat("\nprediction value : ", prediction)

