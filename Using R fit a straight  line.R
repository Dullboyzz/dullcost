#Fitting a Straight line
#Using R fit a straight  line on the following data of the number of hours studied and the corresponding exam score for 15 students in some. Find the equation of line and plot the graph
#hours=(1, 2, 4, 5, 5, 6, 6, 7, 8, 10, 11, 11, 12, 12, 14),
#score=(64, 66, 76, 73, 74, 81, 83, 82, 80, 88, 84, 82, 91, 93, 89)
df =data.frame(hours=c(1, 2, 4, 5, 5, 6, 6, 7, 8, 10, 11, 11, 12, 12, 14),
               score=c(64, 66, 76, 73, 74, 81, 83, 82, 80, 88, 84, 82, 91, 93, 89))
#view first six rows of data frame
head(df)
fit = lm(score~hours, data=df)
print(summary(fit))
plot(df$hours, df$score, pch=19, xlab='hours', ylab='score')
abline(fit)