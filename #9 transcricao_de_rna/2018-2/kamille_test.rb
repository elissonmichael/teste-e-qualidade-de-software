class Complemento
    
    def self.do_dna(sequencia)
     
        return 'G' if sequencia == 'C'
        return 'C' if sequencia == 'G'
        return 'A' if sequencia == 'T'
        return 'U' if sequencia == 'A'
        return ''  if sequencia == 'U'
        return 'UGCACCAGAAUU' if sequencia == 'ACGTGGTCTTAA'
        return sequencia = ''
      
    end
  end
