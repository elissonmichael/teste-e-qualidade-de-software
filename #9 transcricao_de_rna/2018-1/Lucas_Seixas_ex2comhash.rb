class Complemento
  DNA_CHAVE =
    {
      'C' => 'G',
      'G' => 'C',
      'T' => 'A',
      'A' => 'U'
    }

  def self.transcreve(rna)
    #join transforma o array em uma string, trata nil como char vazio
    rna.chars.map { |n| DNA_CHAVE[n] }.join
  end

  def self.do_dna(rna)
    transcrito = transcreve(rna)
    transcrito.size != rna.size ? '' : transcrito
  end
end
