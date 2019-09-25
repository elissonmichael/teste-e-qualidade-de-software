class Complemento

    def self.do_dna(string)
        return "" if dna_invalido?(string)

        string.tr("CGTA","GCAU")
    end

    def self.dna_invalido?(string)
        string.each_char do |char|
            return true unless "CGTA".include?(char)
        end
        return false
    end
end
