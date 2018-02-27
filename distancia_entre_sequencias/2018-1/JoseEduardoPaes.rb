class DistanciaEntreSequencias

    def self.calcular dna1,dna2 
        raise ArgumentError.new("Phoda-se!") if dna1.size!=dna2.size
        count = 0
        for i in 0..dna1.size
            count += 1 if dna1[i] != dna2[i]
        end
       count
    end
end