class Adolescente
  def responder(frase)
    return 'Ok, que seja!' if frase.nil? || frase.empty?
    return 'Ei, relaxa aí!' if frase.upcase == frase
    return 'Certo.' if frase[-1] == '?'

    'Tanto faz.'
  end
end
