class DistanciaEntreSequencias
    def self.calcular(str1,str2)
        return 0 if str1 == str2
        raise ArgumentError if str1.size!=str2.size
        i=0
        for x in 0..(str1.size-1) do
            i+=1 if str1[x]!=str2[x]
        end
        return i
    
    end

    
end