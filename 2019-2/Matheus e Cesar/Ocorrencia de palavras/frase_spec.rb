require 'minitest/autorun'
require_relative 'frase.rb'

describe Frase, '#contar_palavras' do
  describe 'contagem de ocorrências de palavras' do
    
    it 'contar uma palavra' do
        frase = Frase.new("palavra")
        verificador = {"palavra" => 1}
        frase.contar_palavras.must_equal verificador
    end

    it 'contar duas palavras iguais' do
        frase = Frase.new("duas duas")
        verificador = {"duas" => 2}
        frase.contar_palavras.must_equal verificador
    end

    it 'contar ocorrencias de varias palavras' do 
        frase = Frase.new("palavra, teste, palavra, teste, ruby, rails, ruby, teste, palavra")
        verificador = {"palavra" => 3, "teste" => 3, "ruby" => 2, "rails" => 1}
        frase.contar_palavras.must_equal verificador
    end

    it 'contar palavras diferentes' do
        frase = Frase.new("duas palavra duas palavras palavra")
        verificador = {"duas" => 2,"palavra" => 2, "palavras" => 1}
        frase.contar_palavras.must_equal verificador
    end

    it 'contar palavras separadas por caracteres especiais' do
        frase = Frase.new("palavra,teste,contagem!duas'palavra!@palavra]palavra^teste")
        verificador = {"palavra" => 4, "teste" => 2, "contagem" => 1, "duas" => 1}
        frase.contar_palavras.must_equal verificador
    end
end
end
