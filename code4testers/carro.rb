
class Carro
    attr_accessor :nome, :cor, :marca #caracteristicas de uma classe.

    def initialize(nome, marca) #metódo de inicilização
        @nome = nome
        @marca = marca
    end

    def ligar
        puts "O #{@nome} está pronto para iniciar o trajeto."  #funções metodos das classes.
    end
end

#instanciando a classe. no ínicio atraves do metódo initialize
chevette = Carro.new("Chevette", "GM")
#instanciando as caracteristicas da classe.
chevette.nome = "Chevette"
chevette.cor = "bege"
chevette.marca = "GM"
chevette.ligar 

fusca = Carro.new("Fusca", "GM")

fusca.ligar 