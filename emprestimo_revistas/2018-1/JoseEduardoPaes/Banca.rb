require './Emprestimo'

class Banca

  attr_reader :revistas, :emprestimos

  def initialize
    @revistas = Array.new
    @emprestimos = Array.new
  end

  def adicionarRevista(revista)
    @revistas << revista
  end

  def disponivel?(revista)
    @revistas.include?(revista)
  end

  def emprestar(revista, amigo, data)
  
    if(disponivel?(revista))
      @revistas.delete(revista)
      @emprestimos << Emprestimo.new(revista, amigo, data)
    end

  end

  def emprestadasCom(amigo)
    amigo.revistas
  end

end