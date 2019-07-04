class Turma
  attr_reader :alunos
  def initialize
    @alunos = []
  end

  def adicionar(aluno)
    @alunos << aluno unless @alunos.include?(aluno)
  end

  def aprovados
    @alunos.select { |aluno| aluno.nota >= 6 }
  end

  def reprovados
    @alunos.select { |aluno| aluno.nota < 6 }
  end

  def media
    @alunos.sum(&:nota) / @alunos.size
  end
end

class Aluno
  attr_accessor :nome, :nota

  def initialize(nome, nota)
    @nome = nome
    @nota = nota
  end
end
