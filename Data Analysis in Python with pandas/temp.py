
import pandas as pd 
import matplotlib
import statistics as sta
#loading our csv

data= pd.read_csv('/home/codio/workspace/csv/home_runs.csv')

# WRITE YOUR CODE HERE
print(data.info())

print(data.head(5))

data_mode = sta.mode(data["Home Runs"])
data_mode
data_mean = sta.mean(data["Home Runs"])
data_mean
data_median = sta.median(data["Home Runs"])
data_median
data_range = data["Home Runs"].max() - data["Home Runs"].min()
data_range
data_sum = data["Home Runs"].sum()
data_sum

print(data_mode)
print(data_mean)
print(data_median)
print(data_range)
print(data_sum)




