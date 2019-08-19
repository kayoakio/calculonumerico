//function retorno = nomedafunction(parametros)

/*function [A, b, x] = comgauss(n)
    
    A = input('Entre com A: ')
    b = input('Entre com b: ')
    
endfunction*/

A = [1,2;1,3]
b = [0;0]
n = 2

for k = 1:(n-1)
    
    //Escolhendo o pivô
    pivo = A(k,k)
    indice = k
    
    for i = (k+1):n
        if A(i,k) > pivo then
            pivo = A(i,k)
            indice = i
        end
    end
    
    if pivo == 0 then
        disp ('Matriz A é singular')
        break
    end
    
    if indice ~= k then 
        for j = 1:n 
            auxiliarA = A(k,j)
            A(k,j) = A(indice, j)
            A(indice, j) = auxiliarA
        end
        
        auxiliarB = b(k)
        b(k) = b(indice)
        b(indice) = auxiliarB
    end
    
    //A Eliminação começa aqui.
    for i = k+1:n 
        multiplicador = A(i,k) / A(k,k)
        A(i,k) = 0
        for j = (k+1):n
            ma = multiplicador * A(k,j)
            A(i,j) = A(i,j) - ma
        end
        mb = multiplicador * b(k)
        b(i) = b(i) - mb
    end
    
end

disp(A)
disp(b)
