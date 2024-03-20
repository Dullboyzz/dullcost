# defining matrices  
names_row = c("R1","R2","R3")
names_col = c("C1","C2")
A = matrix(c(1,2,3,4,5,6),nrow = 3,ncol = 2,byrow = TRUE,dimnames = list(names_row,names_col))
print(A)
print(A[3,2])
print(A[1,1])
print(A[2,])

#Addition of matrix
names_row = c("R1","R2","R3")
names_col = c("C1","C2")
A = matrix(c(1,2,3,4,5,6),nrow = 3,ncol = 2,byrow = TRUE,dimnames = list(names_row,names_col))
print(A)
B= matrix(c(1,0,2,-4,1,3),nrow = 3,ncol = 2,byrow = TRUE,dimnames = list(names_row,names_col))
print(B)
print(A+B)

#Multiplication of matrix
B = matrix(c(1, 2, 3, 4, 5, 6), nrow = 3, ncol = 2)
print(B)

# Creating 2nd Matrix
C = matrix(c(7, 8, 9, 10, 11, 12), nrow = 2, ncol = 3)
print(C)
if (ncol(B) == nrow(C)){
  print(B%*%C)
}else{
  print("multiplication is not possible")
}

# transpose of matrix
A = matrix(c(12,2,3,4,5,6),nrow = 3,ncol = 2,byrow = FALSE)
print (" The given matrix A is ")
print(A)
print(" The transpose of the matrix A is ")
print(t(A))


