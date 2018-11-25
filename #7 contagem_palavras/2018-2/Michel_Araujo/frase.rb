class Frase
  def initialize(frase)
    @frase = frase
  end

  def conte_palavras
    hash = Hash.new(0)
    filtro_com_regex.each { |palavra| hash[palavra.downcase] += 1 }
    hash
  end

  def filtro_com_regex
    regex = /[[:word:]]+/
    strScan =  @frase.scan(regex)
    strScan
  end
end
