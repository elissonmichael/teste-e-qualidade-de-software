require 'minitest/autorun'
require_relative 'frase.rb'

class FraseTest < Minitest::Test

    def testa_uma_palavra
        frase = Frase.new('teste')
        verificador = {"teste" => 1}
         assert verificador equal frase.contar_palavras
    end
    
    
    def testa_varias_ocorrencias
        frase = Frase.new("teste, palavra, ruby, teste, palavra, teste, ruby")
        verificador = {"teste" => 3, "palavra" => 2, "ruby" => 2}
        assert verificador equal frase.contar_palavras
    end


    def testa_separacao_caracteres_especiais
        frase = Frase.new("teste#palavra,teste!,palavra~ruby,teste,!palavra#$%palavra")
        verificador = {"teste" => 3, "palavra" => 4, "ruby" => 1}
        assert verificador equal frase.contar_palavras
    end

    def testa_separacao_espaco
        frase = Frase.new("teste palavra teste palavra")
        verificador = {"teste" => 2, "palavra" => 2}
        assert verificador equal frase.contar_palavras

    end

    def testa_downcase
        frase = Frase.new("TESTE, tesTe, tEsTe, teste")
        verificador = {"teste" => 4}
        assert verificador equal frase.contar_palavras
    end

    
end
