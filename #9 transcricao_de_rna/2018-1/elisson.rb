class Complemento
  RNA_DNA = { 'G' => 'C', 'C' => 'G', 'T' => 'A', 'A' => 'U' }.freeze

  def self.do_dna(sequencia)
    @rna = ''
    sequencia.chars.each { |letra| transcreva(letra) }
    sequencia.size == @rna.size ? @rna : ''
  end

  def self.transcreva(letra)
    return unless RNA_DNA.key?(letra)
    @rna += RNA_DNA[letra]
  end
end
