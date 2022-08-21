
bandas = ["NIRVANA","SILVERCHAR","RED HOT","SHAMAN","OS TRAVESSOS"]

# puts bandas[0]
# puts bandas[1]
# puts bandas[2]
# puts bandas[3]

bandas.push ("bon jovi") #push adiciona no array
bandas.delete ("RED HOT") #delete de array

#puts bandas
pagode =  bandas.find { |metodo| metodo == 'OS TRAVESSOS' } #cria variavel pagode, faz uma busca no array bandas e retorna

puts pagode #imprime variavel pagodes