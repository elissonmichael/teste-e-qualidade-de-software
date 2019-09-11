class Integer
    def primo?
         if self > 1 && (self % 1) == 0 && (self % self) == 0 && (2..self - 1).none? { |numero| (self % numero) == 0 }
           return true
         else
           return false
         end
       end
end
