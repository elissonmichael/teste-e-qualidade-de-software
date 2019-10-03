class Integer
    def primo?
        valor = self -1
        cont = 0
        if self == -1 || self == 0 || self == 1
             return false
        else
             while valor > 1
                     cont += 1 if self % valor == 0
                     valor -= 1
             end 
             cont == 0   
         end
     end
end
