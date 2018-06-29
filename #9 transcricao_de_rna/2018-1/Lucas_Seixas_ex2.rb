class Complemento
  def self.do_dna(rna)
    #not C,G,T or A ? = ''
    #else retorna uma copia da string com os chars trocados do 1 param pelo 2 param
    rna =~ /[^CGTA]/ ? '' : rna.tr('CGTA', 'GCAU')
  end
end
