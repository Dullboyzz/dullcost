#Hypothesis testing 
#Write  R Code for One sample test
#H0:mu=5
#H1:mu5
#=0.05
# Defining sample vector
x =rnorm(100)
t.test(x, mu = 5)
#write Rcode for the two sample test 
#H0:mu1=mu2
#H1:mu1mu2
#Defining sample vector
x =rnorm(100)
y =rnorm(100)
# Two Sample T-Test
t.test(x, y)
t.test(x, mu = 2, alternative = 'greater')
