class Opcao
  def initialize(numero)
    valida = alternativas.keys.include?(numero)
    raise "Opção Inválida" unless valida
    @numero = numero
  end

  def objeto
    alternativas[@numero].new
  end

  private
  def alternativas
    { 1 => Pedra, 2 => Papel, 3 => Tesoura }
  end
end

class Tesoura
  def vence(opcao)
    opcao.class.equal?(Papel)
  end
end

class Papel
  def vence(opcao)
    opcao.class.equal?(Pedra)
  end
end

class Pedra
  def vence(opcao)
    opcao.class.equal?(Tesoura)
  end
end
