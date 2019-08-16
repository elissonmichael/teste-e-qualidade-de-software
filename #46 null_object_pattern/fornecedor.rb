class Fornecedor
  attr_reader :contato
  def initialize(local, contato = nil)
    @local   = local
    @contato = contato
  end

  def nome_do_contato
    if contato
      contato.nome
    else
      'Nenhum Nome'
    end
  end

  def telefone_do_contato
    if contato
      contato.telefone
    else
      'Nenhum Telefone'
    end
  end

  def email_do_contato
    if contato
      contato.email
    else
      'Nenhum Email'
    end
  end
end
