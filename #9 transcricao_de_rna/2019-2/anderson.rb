class Complemento
  def self.do_dna(caracteres)
    return '' if caracteres.include?('X')
    rna = ''

    caracteres.each_char do |char|
      rna += 'G' if char.eql? 'C'
      rna += 'C' if char.eql? 'G'
      rna += 'A' if char.eql? 'T'
      rna += 'U' if char.eql? 'A'
    end
    rna
  end
end