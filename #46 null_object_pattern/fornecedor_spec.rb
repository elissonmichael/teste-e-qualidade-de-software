require 'minitest/autorun'
require_relative 'fornecedor'

Contato = Struct.new(:nome, :telefone, :email)
Local   = Struct.new(:nome)

describe Fornecedor do
  let(:local)                  { Local.new('Deveria Ser Obrigatório') }
  let(:fornecedor_sem_contato) { Fornecedor.new(local) }
  let(:contato)    { Contato.new('Fulano', '99998888', 'fulano@email.com') }
  let(:fornecedor) { Fornecedor.new(local, contato) }

  describe '#nome_do_contato' do
    it "retorna 'Nenhum Nome' quando fornecedor não tem contato" do
      fornecedor_sem_contato.nome_do_contato.must_equal 'Nenhum Nome'
    end

    it 'retorna o nome do contato quando fornecedor tem contato' do
      fornecedor.nome_do_contato.must_equal 'Fulano'
    end
  end

  describe '#telefone_do_contato' do
    it "retorna 'Nenhum Telefone' quando fornecedor não tem contato" do
      fornecedor_sem_contato.telefone_do_contato.must_equal 'Nenhum Telefone'
    end

    it 'retorna o telefone do contato quando fornecedor tem contato' do
      fornecedor.telefone_do_contato.must_equal '99998888'
    end
  end

  describe '#email_do_contato' do
    it "retorna 'Nenhum Email' quando fornecedor não tem contato" do
      fornecedor_sem_contato.email_do_contato.must_equal 'Nenhum Email'
    end

    it 'retorna o email do contato quando fornecedor tem contato' do
      fornecedor.email_do_contato.must_equal 'fulano@email.com'
    end
  end
end
