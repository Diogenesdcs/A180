require 'mongo'

Mongo::Logger.logger = Logger.new ("./logs/mongo.log") #Função para armazenar logs do mongo detro da pasta Logs.

class MongoDB #classe

    def remove_user(email) #metodo da classe e argumento (email) 
        client = Mongo::Client.new('mongodb://rocklov-db:27017/rocklov') #comando para acessar banco de dados usando o nome e a porta.
        users = client[:users] #Para acessar uma coleção, consulte-a pelo nome dentro do banco.
        users.delete_many({email: email}) #comando de delete dentro do banco pelo códgo ruby 
          
    end

    def get_user(email)
        client = Mongo::Client.new('mongodb://rocklov-db:27017/rocklov') 
        users = client[:users] 
        user = users.find({email: email}).first
        return user[:_id]  
    end

    def remove_equipo(name, email) #metodo de remover nomequipamento do banco de dados 
        user_id = get_user(email)
        client = Mongo::Client.new('mongodb://rocklov-db:27017/rocklov') #comando para acessar banco de dados usando o nome e a porta.
        users = client[:equipos] #Para acessar uma coleção, consulte-a pelo nome dentro do banco.
        users.delete_many({name: name, user: user_id})             
    end
end