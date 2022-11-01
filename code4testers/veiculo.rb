
# Nome, marca , modelo, cor, quantidade de portas, etc..
#Ligar, businar, parar, etc...

class Veiculo
    attr_accessor :nome, :cor, :marca #caracteristicas da classe

    def initialize(nome) #metodo de inicialização do argumento nome 
        @nome = nome
    end
end

class Carro < Veiculo #herança de classes
    def ligar #função metodo da classe
        puts "O #{@nome} está pronto para iniciar o trajeto."
    end

    def dirigir
        puts "O #{@nome}  está iniciando o trajeto"
    end
end

class Moto < Veiculo
    def ligar #função metodo da classe
        puts "A #{@nome} está pronta para iniciar o trajeto."
    end

    def pilotar
        puts "A #{@nome} está iniciando o trajeto"
    end
end

chevette = Carro.new ("Chevette")#variavel chevette recebe  a classe carro.
# chevette.nome = "Chevette" #Variavel chevette sendo instanciada comas caracteristicas da classe.
# chevette.cor = "Bege"
# chevette.marca = "GM"
chevette.ligar #Variavel chevette chamando o metodo ligar da classe carro.
#puts chevette.class para imiprimir o nome da classe
chevette.dirigir

#####################################################

fusca = Carro.new ("Fusca")#variavel chevette recebe  a classe carro.
# fusca.nome = "Fusca" #Variavel chevette sendo instanciada com as caracteristicas da classe.
# fusca.cor = "Bege"
# fusca.marca = "WV"
fusca.ligar #Variavel chevette chamando o metodo ligar da classe carro.
fusca.dirigir

cg = Moto.new ("CG")
cg.ligar
cg.pilotar