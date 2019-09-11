require 'minitest/autorun'
require_relative 'fornecedor'

Contato = Struct.new(:nome, :telefone, :email)
Local   = Struct.new(:nome)

class FornecedorTest < Minitest::Test
  attr_reader :local
  def setup
    local = Local.new('Deveria Ser Obrigatório')
  end

  def test_fornecedor_com_contato
    contato    = Contato.new('Fulano', '99998888', 'fulano@email.com')
    fornecedor = Fornecedor.new(local, contato)
    assert_equal fornecedor.nome_do_contato,     'Fulano'
    assert_equal fornecedor.telefone_do_contato, '99998888'
    assert_equal fornecedor.email_do_contato,    'fulano@email.com'
  end

  def test_fornecedor_sem_contato
    fornecedor = Fornecedor.new(local)
    assert_equal fornecedor.nome_do_contato,     'Nenhum Nome'
    assert_equal fornecedor.telefone_do_contato, 'Nenhum Telefone'
    assert_equal fornecedor.email_do_contato,    'Nenhum Email'
  end
end
