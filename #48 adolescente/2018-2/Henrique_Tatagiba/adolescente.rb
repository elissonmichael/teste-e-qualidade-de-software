class Adolescente
  def responder(resposta)
    return 'Ok, que seja!' if resposta.nil? || resposta.empty?
    return 'Ei, relaxa aí!' if resposta.eql?(resposta.upcase)
    return 'Certo.' if resposta.split(//).last.eql?('?')
    return 'Tanto faz.'
  end
end