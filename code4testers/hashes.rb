fernando = {nome: "Fernando", email: "fernando@gmail.com", Legal: true} #hashes

# puts fernando[:nome]     #imprimi campos dentro da hashe
# puts fernando[:email]
# puts fernando[:Legal]

joao = {nome: "João", email: "João@gmail.com", Legal: true}
# puts joao[:nome]
# puts joao[:email]
# puts joao[:Legal]

pessoas = [fernando,joao]     #cria variavel pessoas recebe os arrays feitos em cima

puts pessoas[0][:nome]        #imprime vavriavel pessoas posição 0 do array campo "nome"
puts pessoas[1][:email]