require 'anderson'

describe Resistencia do
	context 'Retorna um valor quando passado duas cores' do
		it 'Retorna o valor 10' do
			resistor = Resistencia.new
			expect(resistor.valor(['marrom','preto'])).to eq(10)
		end

		it 'Retorna o valor 68' do
			resistor = Resistencia.new
			expect(resistor.valor(['azul','cinza'])).to eq(68)
		end

		it 'Retorna o valor 47' do
			resistor = Resistencia.new
			expect(resistor.valor(['amarelo','violeta'])).to eq(47)
		end

		it 'Retorna o valor 33' do
			resistor = Resistencia.new
			expect(resistor.valor(['laranja','laranja'])).to eq(33)
		end
	end
end