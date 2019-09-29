class Integer
    def primo?
       self > 1 && Math.sqrt(self) && 
       (2..self - 1).to_a.none? { |num| (self % num).zero? } ? true 
       : false
    end
end 