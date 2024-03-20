#Fitting a curve
#Using R fit a curve on following data of the number of hours studied and the corresponding exam score for 15 students in some. Find the equation of line and plot the graph.

df=data.frame(hours=c(1,2,4,5,5,6,6,7,8,10,11,11,12,12,14),
              score=c(64,66,76,73,74,81,83,82,80,88,84,82,91,93,89))
head(df)
fit=lm(score~hours+I(hours^2),data=df)
x_axis=seq(min(df$hours),max(df$hours),length.out=100)
print(summary(fit))
plot(df$hours,df$score,pch=19,xlab='hours',ylab='score')
lines(x_axis,predict(fit,data.frame(hours=x_axis)),col="blue")
