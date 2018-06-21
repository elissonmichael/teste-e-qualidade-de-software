class Lista
    attr_reader :lista
    def initialize
        @lista = [] 
    end 

    def adiciona(item)
        if lista.include?(item)
            lista.delete(item)
            lista.push(item)
        else 
            lista << item
        end  
    end 

    def itens
        lista.reverse!
    end 

end 