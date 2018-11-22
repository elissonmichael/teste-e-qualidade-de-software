class Aluno
  
    attr_reader :nome, :nota

    def initialize(nome, nota)
        @nome = nome
        @nota = nota
    end

    def aprovado?
        @nota >= 6
    end

    def reprovado?
        @nota <= 5
    end

end

class Turma

    attr_reader :alunos

    def initialize()
        @alunos = []
    end

    def adicionar_aluno(aluno)
        alunos << aluno
    end

    def aprovados
        @alunos.select(&:aprovado?)
    end

    def reprovados
        @alunos.select(&:reprovado?)
    end

    def alunos
        @alunos
    end

    def media
        soma_das_notas = @alunos.sum(&:nota)
        soma_das_notas / @alunos.length
    end

end
