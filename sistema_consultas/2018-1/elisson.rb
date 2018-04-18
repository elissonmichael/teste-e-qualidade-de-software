class Medico
  attr_accessor :nome, :consultas
  def initialize(nome)
    @nome = nome
    @consultas = []
  end

  def datas_de_atendimento_do(paciente)
    consultas.select{|consulta| consulta.paciente == paciente}
             .map(&:data_formatada)
  end

  def pacientes_do_dia(data)
    consultas.select{|consulta| consulta.data == data}.map(&:paciente)
  end
end

class Consulta
  attr_accessor :paciente, :medico, :data
  def initialize(paciente, medico, data)
    @paciente = paciente
    @medico = medico
    @data = data
  end

  def agendar
    paciente.consultas << self
    medico.consultas << self
  end

  def data_formatada
    data.strftime('%d/%m/%Y')
  end
end

class Paciente
  attr_accessor :nome, :consultas
  def initialize(nome)
    @nome = nome
    @consultas = []
  end

  def agendar_consulta(medico, data)
    Consulta.new(self, medico, data).agendar
  end
end
