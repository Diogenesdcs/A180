
puts "Qual o seu nome ?"
nome = gets.chomp #variaveis

puts "Informe sua idade."
idade = gets.chomp.to_i #to_i para tranformar o campo string em inteiro

if (idade>=18) #blocos condicionais SE
# puts nome + ", você tem " + idade.to_s + " e pode tirar carteira de motorista." #to_s transforma em string exemplo de concatenação de string
puts "#{nome} , você tem #{idade} e pode tirar carteira de motorista." #exemplo de interpolação de string

elsif (idade >= 7) 
    #puts nome + ", você tem " + idade.to_s + " anos é melhor continuar andando de bicicleta"
    puts "#{nome} , você tem #{idade} anos é melhor continuar andando de bicicleta"
else #SENÃO
    # puts nome + ", você tem " + idade.to_s + " anos e é muito jovem e só pode andar de motoquinha."
    puts "#{nome} , você tem #{idade} anos e é muito jovem e só pode andar de motoquinha."
end