module MikhaelMoeda
  def numero_para_moeda(numero, opcoes={})
    unidade     = opcoes[:unidade]     || 'R$'
    precisao    = opcoes[:precisao]    || 2
    delimitador = opcoes[:delimitador] || '.'
    separador   = opcoes[:separador]   || ','

    separador = '' if precisao == 0
    inteiro, decimal = numero.to_s.split('.')

    i = inteiro.length

    unless i <= 4
      until i <= 2
        i -= 3
        inteiro = inteiro.insert(i, delimitador)
      end
    end

    if precisao == 0
      precisao_decimal = ''
    else
      decimal ||= "0"
      decimal = decimal[0, precisao]
      precisao_decimal = decimal.ljust(precisao, "0")
    end

    return unidade + inteiro + separador + precisao_decimal
  end
end


