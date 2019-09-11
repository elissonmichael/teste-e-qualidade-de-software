class Frase

  def initialize(palavras)

    @palavras = frase

  end

  def contar_palavra

    contar = Hash.new(0)
    filtrar_palavras.split.each {

      |palavra| contador[palavra] += 1

    }
    return contar

   end

  def filtro_palavras

    @palavras.downcase.gsub(/[^a-z0-9]/, ' ')

  end

end
