

#create identity matrix using diag()
diag(5)

#create identity matrix using diag() with explicit nrow argument
diag(nrow=5)

#create identity matrix by creating matrix of zeros, then filling diagonal with ones
mat <- matrix(0, 5, 5)
diag(mat) <- 1

mat


A <- matrix(1:9, 3, 3)
A
det(A)


B <- diag(nrow=3)
B
det(B)
C <- A%*%B
C
D <- A%*%C
D
