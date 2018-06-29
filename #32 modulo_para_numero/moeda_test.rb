require 'minitest/autorun'
require_relative 'moeda'

describe 'Moeda' do

  include Moeda

  describe '#numero_para_moeda' do

    describe 'usando valores padrões' do

      it "formata corretamente um inteiro"

      it "formata corretamente um float"

      it "formata corretamente uma string"

      it "usa delimitadores para números muito grandes"

      it "não tem delimitadores para números pequenos"
    end

    describe 'usando opções customizadas' do

      it 'permite a mudança da :unidade'

      it 'permite a mudança da :precisao'

      it 'esconde o separador se a :precisao é 0'

      it 'permite a mudança do :delimitador'

      it 'permite a mudança do :separador'

      it 'formata corretamente usando múltiplas opções'

    end

  end

end
