#binomial distribution & Normal Distribution
#Suppose there are twelve multiple choice questions in an English class quiz. Each question has five possible answers, and only one of them is correct.Write a R code to find the probability of having four or less correct answers if a student attempts to answer every question at random 

x  = dbinom(4, size=12, prob=0.2) 
sprintf("%s is the probability of attempting 4 question correctly",x)
y = pbinom(4, size=12, prob=0.2) 
sprintf("%s is the probability of attempting less than equal to 4 ",y)

#Write a R code to plot a binomial distribution with random  variables  taking values from  0 to 50 and probability of the success is 0.5.

x = seq(0,50,by = 1)
print(x)
y = dbinom(x,50,0.5)
png(file = "dbinom.png")
plot(x,y)
dev.off()

#Write  R code to find the number of heads that have a probability of 0.25 will come out when a coin is tossed 51 times .
x= qbinom(0.25,51,0.5)
sprintf("%s is the number of times head appears in 51 trial if probability is 0.25",x)

#Write  R code to find 8 random variables from a sample of 150 with probability of 0.4.
x = rbinom(8,150,0.4) 
sprintf("%s  are the random numbers in the sample of 150  with probability 0.4",x)

# Normal distribution 

#Write a R code to plot a normal  distribution with random  variable  taking values between -10 to 10 , mean=2.5 and s.d=2.
x = seq(-10, 10, by=0.1)
y = dnorm(x, mean = 2.5, sd = 2)
png(file="pnormExample.png")
plot(x, y)
dev.off()

#Write R code to create a sequence of number between -10 to 10 incrementing by 0.2 and plot cumulative frequency distribution 

x = seq(-10, 10, by=0.1)
y = pnorm(x, mean = 2.5, sd = 2)
png(file="pnormExample1.png")
plot(x, y)
dev.off()

#Write  R code to plot graph  with function take the probability value  and gives a number whose cumulative  value matches the probability 
x= seq(0,1,by =0.02)
y= qnorm(x,mean=2,sd=1)
png(file= "qnorm.png")
plot(x,y)
dev.off()


#Write a  R code to generate a random number whose distribution is normal.
y= rnorm(50)
png(file= "rnorm.png")
hist(y,main= "Normal distribution")
dev.off()
