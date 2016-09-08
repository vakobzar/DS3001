
# ************* Eigenvalues and Eigenvectors ********************* #
A = [2 -4; -1 -1]
println(A)
w, v = eig(A)
print(w) # these are the eigenvalues
println(v) # v are the normalized eigenvectors 
