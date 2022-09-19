require 'mongo'

Mongo::Logger.logger = Logger.new ("./logs/mongo.log") #Função para armazenar logs do mongo detro da pasta Logs.

class MongoDB #classe

    def remove_user(email) #metodo da classe e argumento (email)
        client = Mongo::Client.new('mongodb://rocklov-db:27017/rocklov') #comando para acessar banco de dados usando o nome e a porta.
        users = client[:users] #Para acessar uma coleção, consulte-a pelo nome dentro do banco.
        users.delete_many({email: email}) #comando de delete dentro do banco pelo códgo ruby 
          
    end

end