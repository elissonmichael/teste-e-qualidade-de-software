class Revista

  attr_reader :colecao, :numero, :ano, :emprestada

  def initialize(colecao, numero, ano)
    @colecao = colecao
    @numero = numero
    @ano = ano
    @emprestada = false
  end

  def alterarEmprestada
    @emprestada = !@emprestada
  end

end