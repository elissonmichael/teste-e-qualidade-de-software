class Complemento

  def self.do_dna seq
    resultado = ''
      seq.each_char do |separado|
      if separado == "C"
        resultado += "G"
      elsif separado == "G"
        resultado += "C"
      elsif separado == "T"
        resultado +="A"
      elsif separado == "A"
        resultado += "U"
      else
        return resultado = ''
      end
    end
    resultado
  end

end
