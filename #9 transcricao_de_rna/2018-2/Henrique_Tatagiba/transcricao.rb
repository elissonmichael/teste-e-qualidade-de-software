class Complemento
  def self.do_dna(letras)
    return '' if letras.include?('X')

    rna = ''
    letras.each_char do |char|
      rna += 'U' if char.eql? 'A'
      rna += 'G' if char.eql? 'C'
      rna += 'C' if char.eql? 'G'
      rna += 'A' if char.eql? 'T'
    end

    rna
  end
end
