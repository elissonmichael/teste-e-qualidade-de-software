class Aluno
    attr_accessor :nome, :nota

    def initialize(nome, nota)
        @nome = nome
        @nota = nota
    end


end

class Turma
    attr_reader :array_alunos

    def initialize
        @array_alunos = []
    end

    def adicionar(aluno)
        @array_alunos << aluno unless aluno.include(array_alunos)
    end

    def aluno
        array_alunos
    end
    def aprovados
        @array_alunos.each_with_object([]){ |array, alunos_aprovados| alunos_aprovados << array if array.nota >= 6}
    end
    def reprovados
         @array_alunos.each_with_object([]){ |array, alunos_reprovados| alunos_reprovados << array if array.nota < 6}
    end
    def media
        @array_alunos.sum(&:nota) / @array_alunos.size
    end
end
