class Frase
  def initialize(frase)
    @frase = frase
  end

  def conte_palavras()
    re = /[,"'\n:!&@$%\^''?]/m
    @frase = @frase.downcase().gsub(re, ' ').split(); #é code smell??

    array = []
    for palavra in @frase
        array.push(palavra)
    end

    array.inject(Hash.new(0)) {|memo,value| memo[value] += 1; memo}
  end

end
