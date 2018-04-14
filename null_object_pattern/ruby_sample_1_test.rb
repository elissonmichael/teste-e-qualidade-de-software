require 'minitest/autorun'
require_relative 'ruby_sample_1'

class FornecedorTest < Minitest::Test
  def setup
    @local = Local.new('Deveria Ser Obrigatório')
    @contato = Contato.new('Fulano', '99998888', 'fulano@email.com')
  end

  def test_fornecedor_com_contato
    fornecedor = Fornecedor.new(@local, @contato)
    assert_equal fornecedor.nome_do_contato, 'Fulano'
    assert_equal fornecedor.telefone_do_contato, '99998888'
    assert_equal fornecedor.email_do_contato, 'fulano@email.com'
  end

  def test_fornecedor_sem_contato
    fornecedor = Fornecedor.new(@local, nil)
    assert_equal fornecedor.nome_do_contato, 'Nenhum Nome'
    assert_equal fornecedor.telefone_do_contato, 'Nenhum Telefone'
    assert_equal fornecedor.email_do_contato, 'Nenhum Email'
  end
end
