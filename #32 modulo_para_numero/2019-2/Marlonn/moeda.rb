module Moeda
  def numero_para_moeda(numero, opcoes={})
    unidade     = opcoes[:unidade]     || 'R$'
    precisao    = opcoes[:precisao]    || 2
    delimitador = opcoes[:delimitador] || '.'
    separador   = opcoes[:separador]   || ','

    separador        = '' if precisao.zero?
    inteiro, decimal = numero.to_s.split('.')
    inteiro          = delimitar_usando(inteiro, delimitador)
    precisao_decimal = ajustar_casas_decimais(precisao, decimal)

    unidade + inteiro + separador + precisao_decimal
  end

  private

  def ajustar_casas_decimais(precisao, decimal)
    return '' if precisao.zero?

    decimal ||= "0"
    decimal = decimal[0, precisao]
    decimal.ljust(precisao, "0")
  end

  def delimitar_usando(numero, delimitador)
    posicao = numero.length
    while posicao > 3
      posicao -= 3
      numero = numero.insert(posicao, delimitador)
    end
    numero
  end
end
