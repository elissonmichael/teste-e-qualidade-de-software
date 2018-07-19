class Adolescente
  def responder(entrada)
    resposta_para(Frase.new(entrada))
  end

  private

  def resposta_para(frase)
    return 'Ok, que seja!'  if frase.silencio?
    return 'Ei, relaxa aí!' if frase.grito?
    return 'Certo.'         if frase.pergunta?
    'Tanto faz.'
  end
end

class Frase
  def initialize(conteudo)
    @conteudo = conteudo.to_s
  end

  def pergunta?
    @conteudo.end_with? '?'
  end

  def grito?
    @conteudo == @conteudo.upcase
  end

  def silencio?
    @conteudo.empty?
  end
end
