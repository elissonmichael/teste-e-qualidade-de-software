class Emprestimo
  attr_reader :revista, :data_emprestimo, :data_devolucao
  def initialize(revista, data)
    @revista           = revista
    @data_emprestimo   = data
    @data_devolucao    = nil
    revista.atualizar_emprestimo(self)
  end

  def devolver(data)
    @data_devolucao = data if devolucao_valida?(data)
    devolucao_valida?(data)
  end

  def devolvido?
    !data_devolucao.nil?
  end

  private
  def devolucao_valida?(data)
    data >= data_emprestimo
  end
end
