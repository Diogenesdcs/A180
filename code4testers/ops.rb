def soma(n1, n2)
    puts n1 + n2
end 
soma(10, 3)

def subtrai(n1, n2)
    puts n1 - n2
end 
subtrai(10, 3)

def multiplica(n1, n2)
    puts n1 * n2
end 
multiplica(10, 3)

def divide(n1, n2)
    resultado = (n1.to_f / n2.to_f).round(2) #numero float arredondamento com duas casas decimais
    puts resultado                           #imprime resultado
    puts resultado.class                     #imprime tipo do resultado
end 
divide(10, 3)

