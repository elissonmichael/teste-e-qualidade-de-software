require 'minitest/autorun'
require 'date'
# require_relative 'aaaa-s/nome'

describe Medico do
  before do
    @medico     = Medico.new('Dra. Satya Ananda')
    @paciente1  = Paciente.new('Élisson Michael')
    @paciente2  = Paciente.new('Brandon Nyorai')
  end

  describe '#pacientes_do_dia' do
    before do
      @paciente1.agendar_consulta(@medico, Date.today)
      @paciente2.agendar_consulta(@medico, Date.today)
    end

    it 'retorna os pacientes que estão agendados de acordo com uma data' do
      @medico.pacientes_do_dia(Date.today).must_include @paciente1, @paciente2
    end

    it 'retorna nenhum paciente quando não há agendamento em uma data' do
      @medico.pacientes_do_dia(Date.today + 1).must_be :empty?
    end
  end

  describe '#datas_de_atendimento_do' do
    before do
      @paciente1.agendar_consulta(@medico, Date.new(2018, 4, 3))
    end

    it 'retorna as datas de agendamento de um determinado paciente' do
      @medico.datas_de_atendimento_do(@paciente1).must_include '03/04/2018'
    end

    it 'retorna nenhuma data quando não há agendamento de um paciente' do
      @medico.datas_de_atendimento_do(@paciente2).must_be :empty?
    end

    it 'não permite que um paciente agende uma mesma data mais de uma vez ' do
      @paciente1.agendar_consulta(@medico, Date.new(2018, 4, 3))
      @medico.datas_de_atendimento_do(@paciente1).must_equal ['03/04/2018']
    end
  end
end
