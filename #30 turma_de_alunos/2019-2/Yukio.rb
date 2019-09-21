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
        array_alunos.each do |alunos_aprovados|
            if alunos_aprovados.nota >= 6
                alunos_aprovados << array_alunos 
            end
        end
        return alunos_aprovados
    end
    def reprovados
        array_alunos.each do |alunos_reprovados|
            if alunos_reprovados.nota < 6
                alunos_reprovados << array_alunos 
            end
        end
    return alunos_reprovados
    end
    def media
        @array_alunos.sum(&:nota)
    end
end