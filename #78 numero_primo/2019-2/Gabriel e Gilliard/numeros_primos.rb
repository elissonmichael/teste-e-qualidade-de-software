module Numero_primo
def self.primo?
  (2..(self - 1)).each do |numero|
    return false if self % numero == 0
  end
  true
end
