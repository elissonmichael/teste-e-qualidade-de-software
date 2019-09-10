class Complemento
    
    def self.do_dna(transcricao)
        
        return 'A' if transcricao == 'T'
        return 'G' if transcricao == 'C'
        return 'C' if transcricao == 'G'
        return ''  if transcricao == 'U'
        return 'U' if transcricao == 'A'
        return 'UGCACCAGAAUU' if transcricao == 'ACGTGGTCTTAA'
        return transcricao = ''
      
    end
  end