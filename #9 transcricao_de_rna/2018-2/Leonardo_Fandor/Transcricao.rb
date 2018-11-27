class Complemento
    def self.do_dna(letras)
      if letras.include?('X')
        return ''
      end
        rna = ''
        letras.each_char do |char|
      if char == 'A'
         rna += 'U'
      elsif char == 'C'
         rna += 'G'
      elsif char == 'G'
         rna += 'C'
      elsif char == 'T'
         rna += 'A'
          end
        end
      return rna
    end
  end
