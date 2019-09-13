class Integer
    def primo?
         if self > 1 && (self % 1).zero? && (self % self).zero? && (2..self - 1).to_a.none? { |numero| (self % numero).zero? }

                return true

         else
                return false
         end
    
        end
        
end
  

  

    


