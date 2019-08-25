//Matriz Simétrica e Positiva Definida
A = [4 -2 2; -2 10 -7; 2 -7 30]
b = [8; 11; -31]

//Transposta
Ltransposta = chol(A)
//L = A / Ltransposta

//Y = Ltranposta \ b
//X = L \ y
Y = Ltransposta' \ b
X = Ltransposta \ Y

disp(X)
