\\basicinarray
x = c(9,20,21,25,30,50)
y = c(3,5,6,7,8,
    ,x*y,9)
cat("the variable x=",x,"\n")
cat("the variable y=",y,"\n")
cat("addition of x and y is"
    ,x+y,
    "\n")
cat("product of x and y is"
    "\n")
cat("mod of x and y is"
    ,x%%y,
    "\n")
cat("division of x and y is"
    ,x%/%y,
    "\n")
cat("Is x greater than y"
    ,x<y,
    "\n")
cat("Is x and y are equal"
    ,x==y,
    "\n")
cat("Is x and y are not equal"
    ,x!=y,
    "\n")
print(x&y)
print(x|y)
z = 4:10
w=5
u=-6
print(w%in%z)
print(u%in%z)
t=seq(0,50,5)
print(t)
C=list("this.","that","there")
D=list(1,2,3)
print(c())

\\Lists
C=list("this.","that","there")
D=list(1,2,3)
print(c(C,D))

\\matrices
B = matrix(c(1,2,3,4,5,6),nrow=2,ncol=3,byrow = FALSE)
A = list("good morning",c(11,22,3),1,B)
print(A[4])

\\array
p=c(1,2,3)
q=c(10,11,12,13,14,15)
column.names = c("col1","col2","col3")
row.names = c("row1","row2","row3")
matrix.names = c("matrix1","matrix2")
R = array(c(p,q),dim = c(3,3,2),dimnames = list(row.names,column.names,matrix.names))
print(R)

\\frames
K = data.frame(Name = c("Ravi","sagar","mohit","Reena"),marks = c(20,30,40,50),stream = c("sci","arts","com","arts"))
print(K)

\\Line plot
x=c(7,12,28,3,41)
y=c(14,7,6,19,2)
png(file="line_chart_2lines.jpg")
plot(x,type="o",col="red",xlab="month",ylab="rainfall",main="Rainfall chart")
lines(y,type="o",col="blue")
dev.off()

\\Barplot 
x=c(12,14,15,17,20,34)
png(file="barplot.jpg")
barplot(x,col="blue",names.arg=c("m","t","w","th","F","s"),
        xlab="days",ylab="students",main="Attendance")
dev.off()

\\Box plots
input = mtcars[,c('mpg','cyl')]
print(head(input))
png(file="boxplot.jpg")
boxplot(mpg~cyl,data=mtcars,xlab="no of cyclilnder",
        ylab="mileage", main='mileage data')
dev.off()

Histogram
v = c(19, 23, 11, 5, 16, 21, 32,
      14, 19, 27, 39)

# Create the histogram.
hist(v, xlab = "No.of Articles ",
     col = "green", border = "black")

\\piechart
x = c(34,56,76,66)
y = c("data science","oracle","Rtool","DBA")
pct = round(x/sum(x)*100)
lbls = paste(y,pct)
lbls=paste(lbls,"%",sep = " ")
pie(x,labels = lbls, col = rainbow(length(lbls)), main = "subject of computer science")



