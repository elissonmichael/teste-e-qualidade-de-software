require 'minitest/autorun'
require_relative 'prova.rb'


describe Amigo do 
	def setup 
		@revista = Revista.new("Batman", 1, 2018)
		@revista2 = Revista.new("Superman", 5, 2016)
		@amigo = Amigo.new("João", "Clara", "Ucam")
		
		@data_de_emprestimo = Date.new(2001,01,30)
		@data_devolucao = Date.new(2018,01,04)
	end
	
	it "empresta a revista ao amigo" do 
		@amigo.pegar_emprestado(@revista, @data_de_emprestimo)
		@amigo.revistas_emprestadas.must_equal [@revista] 
	end 
	
	it "amigo devolve a revista" do
		@amigo.pegar_emprestado(@revista, @data_de_emprestimo)
		@amigo.devolver(@revista, @data_devolucao)
		@amigo.revistas_emprestadas.must_equal [] 
	end 
	
	it "data inicial do emprestimo" do 
		@amigo.pegar_emprestado(@revista, @data_de_emprestimo)
		@amigo.data_emprestimo.must_equal @data_de_emprestimo
	end 
	
	it "data de devolucao do emprestimo" do
		@amigo.pegar_emprestado(@revista, @data_de_emprestimo)
		@amigo.devolver(@revista, @data_devolucao)
		@amigo.data_devolucao.must_equal @data_devolucao
	end 
	
	it "impede que a data de devolucao da revista seja menor que o emprestimo" do 
		@amigo.pegar_emprestado(@revista, @data_de_emprestimo)
		@amigo.devolver(@revista, Date.new(2000,04,03))
		@amigo.revistas_emprestadas.must_equal [@revista]
	end 
	
	it "verifica se a revista já foi emprestada" do 
		@amigo.pegar_emprestado(@revista, @data_de_emprestimo)
		@amigo.pegar_emprestado(@revista, @data_de_emprestimo)
		@amigo.revistas_emprestadas.must_equal [@revista] 
	end 
	
	it "revista emprestada para determinado amigo" do 
		@amigo.pegar_emprestado(@revista, @data_de_emprestimo)
		@amigo.pegar_emprestado(@revista2, @data_de_emprestimo)
		@amigo.revistas_emprestadas.must_equal [@revista, @revista2] 
	end 
	
end 