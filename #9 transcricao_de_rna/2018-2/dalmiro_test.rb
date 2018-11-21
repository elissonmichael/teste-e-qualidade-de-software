class Complemento
  def self.do_dna(char)
    dna = ''
    char.each_char do |char|
      return '' if char.include?('X')
      if char == 'A'
        dna += 'U'
      elsif char == 'C'
        dna += 'G'
      elsif char == 'G'
        dna += 'C'
      elsif char == 'T'
        dna += 'A'
      end
    end
    return dna
  end
end
