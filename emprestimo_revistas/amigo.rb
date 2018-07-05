require_relative 'emprestimo'
class Amigo
  attr_reader :nome, :mae, :local, :emprestimos
  def initialize(nome, mae, local)
    @nome       = nome
    @mae        = mae
    @local      = local
    @emprestimos = []
  end

  def pegar_emprestado(revista, data)
    @emprestimos << Emprestimo.new(revista, data) unless revista.emprestada?
  end

  def devolver(revista, data)
    emprestimo = emprestimo_da(revista)
    @emprestimos.delete(emprestimo) if emprestimo.devolver(data)
  end

  def revistas
    emprestimos.map(&:revista)
  end

  private
  def emprestimo_da(revista)
    @emprestimos.detect{ |e| e.revista.equal?(revista) }
  end
end
