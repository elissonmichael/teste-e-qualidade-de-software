require 'date'

class Emprestimo

  attr_reader :amigo, :revista, :data_inicial, :data_final

  def initialize(revista, amigo, data)
    @amigo = amigo
    @amigo.pegaEmprestado(@revista)
    @revista = revista
    @revista.alterarEmprestada
    @data_inicial = data
    @data_final = nil
  end

  def devolver(data)
    
    unless (data > @data_inicial)
      return "Data informada deve ser posterior a data inicial do emprestimo."
    end
    @amigo.devolverRevista(@revista)
    @revista.alterarEmprestada
    @data_final = data
  end

end