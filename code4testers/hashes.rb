fernando = {nome: "Fernando", email: "fernando@gmail.com", Legal: true} #hashes

# puts fernando[:nome]
# puts fernando[:email]
# puts fernando[:Legal]

joao = {nome: "João", email: "João@gmail.com", Legal: true}
# puts joao[:nome]
# puts joao[:email]


pessoas = [fernando,joao]     #pessoas recebe os arrays

puts pessoas[0][:nome]        #imprime vavriavel pessoas posição 0 do array campo "nome"
puts pessoas[1][:email]