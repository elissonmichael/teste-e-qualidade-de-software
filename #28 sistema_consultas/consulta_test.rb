# require_relative 'aaaa-s/nome'
require 'minitest/autorun'
require 'date'

class MedicoTest < Minitest::Test
  def setup
    @medico     = Medico.new('Dra. Satya Ananda')
    @paciente1  = Paciente.new('Élisson Michael')
    @paciente2  = Paciente.new('Brandon Nyorai')
  end

  def test_retorno_de_pacientes_de_uma_determinada_data
    @paciente1.agendar_consulta(@medico, Date.today)
    @paciente2.agendar_consulta(@medico, Date.today)
    assert_equal @medico.pacientes_do_dia(Date.today), [@paciente1, @paciente2]
    assert_equal @medico.pacientes_do_dia(Date.today + 1), []
  end

  def test_retorno_de_datas_em_que_atendeu_um_determinado_paciente
    @paciente1.agendar_consulta(@medico, Date.new(2018, 4, 3))
    assert_equal @medico.datas_de_atendimento_do(@paciente1), ['03/04/2018']
    assert_equal @medico.datas_de_atendimento_do(@paciente2), []
  end
end
