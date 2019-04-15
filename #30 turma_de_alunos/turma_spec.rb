require 'minitest/autorun'
#require_relative 'aaaa-s/seu_nome'

describe Turma do
  attr_reader :turma, :jose, :joao, :maria
  before do
    @turma  = Turma.new
    @jose   = Aluno.new("Jose", 6.0)
    @joao   = Aluno.new("João", 5.0)
    @maria  = Aluno.new("Maria", 7.0)
    turma.adicionar(jose)
    turma.adicionar(joao)
    turma.adicionar(maria)
  end

  describe '#alunos' do
    it 'retorna todos os alunos da turma' do
      turma.alunos.must_equal [jose, joao, maria]
    end

    it 'não adiciona o mesmo aluno duas vezes' do
      turma.adicionar(jose)
      turma.alunos.must_equal [jose, joao, maria]
    end
  end

  describe '#aprovados' do
    it 'retorna apenas os alunos aprovados na turma' do
      turma.aprovados.must_equal [jose, maria]
    end
  end

  describe '#reprovados' do
    it 'retorna apenas os alunos reprovados na turma' do
      turma.reprovados.must_equal [joao]
    end
  end

  describe '#media' do
    it 'retorna média das notas da turma' do
      turma.media.must_equal 6.0
    end
  end
end
