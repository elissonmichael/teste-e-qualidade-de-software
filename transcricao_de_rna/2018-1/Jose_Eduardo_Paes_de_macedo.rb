class Complemento

    def self.do_dna rna
        rna_traduzido = '' 
        rna.each_char do |pedaco_rna|
            if pedaco_rna == 'C'
                rna_traduzido += 'G'
            elsif pedaco_rna == 'G' 
                rna_traduzido += 'C'
            elsif pedaco_rna == 'T'
                rna_traduzido +=  'A'
            elsif pedaco_rna == 'A'
                rna_traduzido +=  'U'
            else
                return rna_traduzido = ''
            end
        end
        rna_traduzido
    end

end