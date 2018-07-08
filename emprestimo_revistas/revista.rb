class Revista
  attr_reader :colecao, :numero, :ano, :emprestimo
  def initialize(colecao, numero, ano)
    @colecao    = colecao
    @numero     = numero
    @ano        = ano
    @emprestimo = nil
  end

  def atualizar_emprestimo(emprestimo)
    @emprestimo = emprestimo
  end

  def emprestada?
    !emprestimo.nil? && !emprestimo.devolvido?
  end
end
