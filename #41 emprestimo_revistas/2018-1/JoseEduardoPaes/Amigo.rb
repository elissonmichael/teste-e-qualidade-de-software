class Amigo

  attr_reader :nome, :nomeMae, :localOndeConheceu, :revistas

  def initialize(nome, nomeMae, localOndeConheceu)
    @nome = nome
    @nomeMae = nomeMae
    @localOndeConheceu = localOndeConheceu
    @revistas = Array.new
  end

  def pegaEmprestado(revista)
    @revistas << revista
  end

  def devolverRevista(revista)
    @revistas.delete(revista)
  end

end