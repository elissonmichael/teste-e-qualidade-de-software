class Revista
    attr_accessor :nome, :mae, :local, :emprestimo
    def initialize(nome, mae, local)
        @nome = nome
        @mae = mae
        @local = local
    end
 #   def emprestada?
  #      return true if revistas_por_nome.include?(@nome)
    #    
   # end
end



class Emprestimo
    attr_accessor :revista, :data, :data_devolucao
    
    def initialize(revista, data)
        @revista = revista
        @data = data
        @quantidade = 1
        @data_devolucao = 0
        
    end
    def devolvido?
        return true if @data <= @data_devolucao
    end

    def devolver(data_emp)
        @data_devolucao = data_emp if @data <= data_emp
    end

end


class Amigo
    attr_accessor :nome, :mae, :local, :emprestimos
    def initialize(nome, mae, local)
        @nome = nome
        @mae = mae
        @local = local
        @emprestimos = []
        @emprestada = false
    end
    def pegar_emprestado(revista, data)
        @emprestimos << Emprestimo.new(revista, data) unless @emprestimos.include?(detectar_se_existe_a_mesma_revista_emprestada(revista))
    end

    def devolver(revista, data)
        @emprestimos.delete_if{ |emprestimo| emprestimo.revista == revista && emprestimo.data < data}
    end
    def revistas
        @emprestimos.collect{ |emprestimo| emprestimo.revista}
    end
    def revistas_por_nome
        @emprestimos.collect{ |emprestimo| emprestimo.nome}
    end
    def detectar_se_existe_a_mesma_revista_emprestada(revista)
        @emprestimos.find{ |emprestimo| emprestimo.revista == revista}
    end
end