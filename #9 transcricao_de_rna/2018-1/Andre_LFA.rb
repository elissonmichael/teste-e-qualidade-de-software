class Complemento

  def self.do_dna rna

    valor = ''
    rna.each_char do |valor_rna|
      if valor_rna == 'C'
        valor += 'G'
      elsif valor_rna == 'G'
        valor += 'C'
      elsif valor_rna == 'T'
        valor += 'A'
      elsif valor_rna == 'A'
        valor += 'U'
      else
        return valor_rna = ''
      end

    end
    valor
  end

end
