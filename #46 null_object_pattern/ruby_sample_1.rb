class Fornecedor
  attr_reader :contato
  def initialize(local, contato)
    @local = local
    @contato = contato || NullContato.new
  end

  def nome_do_contato
    contato.nome
  end

  def telefone_do_contato
    contato.telefone
  end

  def email_do_contato
    contato.email
  end
end

class NullContato
  def nome
    'Nenhum Nome'
  end

  def telefone
    'Nenhum Telefone'
  end

  def email
    'Nenhum Email'
  end
end

Contato = Struct.new(:nome, :telefone, :email)
Local   = Struct.new(:nome)
