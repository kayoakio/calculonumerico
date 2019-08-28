n = 3// input('N: ')

I = eye(n,n) //Matriz Identidade
A = rand(n,n) //Matriz Aleatória

// Decomposição 
[L,U] = lu(A)

//Yn = L\I(:,n)
//Xn = U\Yn
for i = 1:n
    Y = L \ I(:,i)
    Ainversa(:,i) = U \ Y
end

//A * Ainversa
ajuda = A * Ainversa
disp(ajuda)

//I(:,2)
