//function retorno = nomedafunction(parametros)

function comgauss
    
    A = input('Entre com A: ')
    b = input('Entre com b: ')
    
   [n m] = size(A)
   
   for k = 1:(n-1)
       
       [x,indice] = max(A(k:n, k))
       indice = indice + k - 1
        
       //Trocar as Linhas
       auxiliarA = A(k,:)
       A(k,:) = A(indice,:)
       A(indice,:) = auxiliarA
       
       auxiliarb = b(k,:)
       b(k,:) = b(indice,:)
       b(indice,:) = auxiliarb
       
       for i = k+1:n
          multiplicador = A(i,k)/A(k,k)
          A(i,:) = A(i,:) - multiplicador * A(k,:)
          b(i,:) = b(i,:) - multiplicador * b(k,:)
       end
   end

    for i = n:-1:1
        resposta = 0
        for j = i+1:n
            resposta = resposta + A(i,j) * x(j)
        end
        x(i) = (b(i) - resposta) / A(i,i)
    end
    
    
endfunction