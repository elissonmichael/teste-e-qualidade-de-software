class Turma
  attr_reader :alunos, :aprovados, :reprovados, :media
  
  def initialize
    @alunos = []
    @media = 0
  end
  
  # possivel ajuste nos testes pra ajudar a visualizar
  # assert no aluno.nome, retornar o objeto inteiro fica ruim de olhar
  def aprovados
    aprovados = alunos.collect { |aluno| aluno if aluno.aprovado? }
    aprovados.compact
  end
  
  def reprovados
    reprovados = alunos.collect { |aluno| aluno if !aluno.aprovado? }
    reprovados.compact
  end

  def adicionar(aluno)
    @alunos << aluno if !alunos.include? aluno
  end
  
  def media
    notas = alunos.collect { |aluno| aluno.nota }
    @media = notas.reduce(:+) / notas.size.to_f
  end
  
end

class Aluno
  attr_reader :nome, :nota
  
  def initialize(nome, nota)
    @nome = nome
    @nota = nota
  end
  
  def aprovado?
    nota >= 6.0
  end
  
end