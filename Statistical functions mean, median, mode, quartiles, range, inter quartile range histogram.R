v=c(1,2,3,7,3,5,7,-1,2,2,3,2,3,4,5,2)
mean(v)
median(v)
getmode = function(v) {
  uniqv = unique(v)
  uniqv[which.max(tabulate(match(v, uniqv)))]
}
print(getmode(v))
print(getwd())
R = max(v) - min(v)
cat(" Range =",R,"\n")
Q.D = (quantile(v)- quantile(v))/2
cat(" Quartile deviation  =",Q.D,"\n")
M = mean(v)
print(M)
M.D = sum(abs(v-M))/length(v)
cat(" mean deviation  =",M.D,"\n")

# Interquartile Range
iqr_v <- IQR(v)
cat("Interquartile Range:", iqr_v, "\n")

# Histogram
hist(v, main = "Histogram", xlab = "Values", ylab = "Frequency")