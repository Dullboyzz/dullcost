#Using R import the data from Excel/.csv and perform all measure of central tendency
data(mtcars)
head(mtcars,6)
print(summary(mtcars$mpg))
D=quantile(mtcars$cyl,seq(0.25,0.75,0.25))
print(D)
X= read.csv("employees.csv")
print(head(X,8))
cat("The mean of the Age",mean(X$Age))
getmode = function(v) {
  uniqv = unique(v)
  uniqv[which.max(tabulate(match(v, uniqv)))]
}
cat("The mode of the countries",getmode(X$Country))
print(summary(X$Age))
print(getwd())