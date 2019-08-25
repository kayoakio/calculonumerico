//function retorno = nomedafunction(parametros)
function semgauss
    
    A = input('Entre com A: ')
    b = input('Entre com b: ')
    
    [n m] = size(A)
    
    for k = 1:(n-1)
        for i = (k+1):n
            multiplicador = A(i,k) / A(k,k);
            A(i,k) = 0;
            for j = (k+1):n 
                mA = multiplicador * A(k,j); 
                A(i,j) = A(i,j) - mA;
            end
            mb = multiplicador * b(k);
            b(i) = b(i) - mb;
        end
    end
       
    for i = 1:n
        x(i) = b(i) / A(i,i)
    end

    //Encontrando o vetor de resolução x
    for i = (n-1):1 
        soma = 0
        for j = (i+1):n
            ax = A(i, j) * x(j)
            soma = soma + ax
        end
        bs = b(i) - soma
        x(i) = bs / A(i,i)
    end
    
endfunction
