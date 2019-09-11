require 'minitest/autorun'
#require_relative 'aaaa-s/seu_nome'

class TurmaTest < Minitest::Test
  attr_reader :turma, :jose, :joao, :maria
  def setup
    @turma  = Turma.new
    @jose   = Aluno.new("Jose", 6.0)
    @joao   = Aluno.new("João", 5.0)
    @maria  = Aluno.new("Maria", 7.0)
    turma.adicionar(jose)
    turma.adicionar(joao)
    turma.adicionar(maria)
  end

  def test_alunos_da_turma
    assert_equal turma.alunos, [jose, joao, maria]
  end

  def test_nao_adiciona_o_mesmo_aluno_2_vezes
    turma.adicionar(jose)
    assert_equal turma.alunos, [jose, joao, maria]
  end

  def test_alunos_aprovados
    assert_equal turma.aprovados, [jose, maria]
  end

  def test_alunos_reprovados
    assert_equal turma.reprovados, [joao]
  end

  def test_media_da_turma
    assert_equal turma.media, 6.0
  end
end
