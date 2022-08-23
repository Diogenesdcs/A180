# i = 1
# 10.times do 
#     puts "execução numero #{i}"
#     i = i + 1
# end


bandas = ["NIRVANA","SILVERCHAR","RED HOT","SHAMAN","OS TRAVESSOS"]

#timer com contador 
# i=0
# bandas.size.times do
#     puts bandas[i]
#     i=i + 1
# end

#trabalhando com o each, percorre todo o array bandas e invoca o metodo
#each e coloca o contexto dentro do pipe depois imprimi o contexto  
bandas.each do |banda|  
    puts banda 
end