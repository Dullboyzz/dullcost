#Using R import the data from Excel/.csv and perform all measure of dispersion
print(getwd())
X= read.csv("employees.csv")
R = max(X$Age) - min(X$Age)
cat(" Range =",R,"\n")
Q.D = (quantile(X$Age,0.75)- quantile(X$Age,0.25))/2
cat(" Quartile deviation  =",Q.D,"\n")
M = mean(X$Age)
print(M)
M.D = sum(abs(X$Age-M))/length(X$Age)
cat(" mean deviation  =",M.D,"\n")

#Write R code to find the central and raw Moments for data
X = c(1,2,5,6,7,11,10,9,12)
# Raw moments
library(moments)
Y=moment(X, order = 3,central = FALSE)
print(Y)
#Central moment
Z = moment(X, order = 3,central = TRUE)
print(Z)

#Find the R code to find the skewness using relative and absolute measure of the data
#88,95,92,97,96,94,86,91,95,97,88,85,76,68
data = c(88, 95, 92, 97, 96, 97, 94, 86, 91, 95, 97, 88, 85, 76, 68)
cat (" mean of the data",mean(data))
cat (" mean of the data",median(data))
#Absolute measure of skewness
A.S = mean(data)-median(data)
cat("The Absolute  measure of skewness",A.S)
#Relative measure
K.S=3*(mean(data)-median(data))/sd(data)
cat("The relative measure of skewness",K.S)

#Find the R code to find the skewness of the data using moments
#88,95,92,97,96,94,86,91,95,97,88,85,76,68
library(moments)
S=skewness(data)
hist(data)

#Write a R program to find the  Kurtosis of the data.
data = c(88, 95, 92, 97, 96, 97, 94, 86, 91, 95, 97, 88, 85, 76, 68)
library (moments)
print ("kurtosis of the given data")
print(kurtosis(data))
