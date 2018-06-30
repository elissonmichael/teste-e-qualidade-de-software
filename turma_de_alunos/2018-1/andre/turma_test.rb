require 'minitest/autorun'
require_relative 'turma.rb'

describe Turma do 
    def setup
        @turma = Turma.new()
        @aluno1 = Aluno.new("Andre", 7)
        @aluno2 = Aluno.new("Fernanda", 5)
    end 

    it 'adiciona um aluno a turma' do 
        @turma.adicionar_aluno(@aluno1)
        @turma.adicionar_aluno(@aluno2)
        @turma.alunos.must_equal [@aluno1, @aluno2]
    end 

    it 'retorna todos os alunos aprovados' do 
        @turma.adicionar_aluno(@aluno1)
        @turma.adicionar_aluno(@aluno2)
        @turma.aprovados.must_equal [@aluno1]
    end 

    it 'retorna todos os alunos reprovados' do 
        @turma.adicionar_aluno(@aluno1)
        @turma.adicionar_aluno(@aluno2)
        @turma.reprovados.must_equal [@aluno2]
    end 

    it 'retorna a media da turma' do
        @turma.adicionar_aluno(@aluno1)
        @turma.adicionar_aluno(@aluno2)
        @turma.media.must_equal 6  
    end 
end 