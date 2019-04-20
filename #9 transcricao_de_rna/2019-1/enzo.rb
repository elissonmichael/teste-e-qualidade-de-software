class Complemento
  def self.do_dna(sequencia)
    conversao = { 'C' => 'G', 'G' => 'C', 'T' => 'A', 'A' => 'U' }
    return sequencia.upcase.chars.map { |letra| conversao[letra] }.join unless sequencia.upcase.chars.any? { |letra| !conversao.has_key?(letra) }

    ''
  end
end
