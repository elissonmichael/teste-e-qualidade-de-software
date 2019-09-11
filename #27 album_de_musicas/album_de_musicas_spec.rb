require 'minitest/autorun'
#require_relative '2018-1/nome'

class Minitest::Test
  attr_reader :album, :simone, :simaria, :musica_meu_violao, :musica_ingratidao
  def setup
    @album              = Album.new('Bar Das Coleguinhas', 2015)
    @simone             = Artista.new('Simone')
    @simaria            = Artista.new('Simaria')
    @musica_meu_violao  = Musica.new('Meu Violão e Nosso Cachorro', 209)
    @musica_ingratidao  = Musica.new('Ingratidão', 201)
  end
end

describe Album do
  before do
    album.incluir(musica_meu_violao)
    album.incluir(musica_ingratidao)
  end

  describe '#incluir' do
    it 'adiciona músicas no álbum' do
      album.musicas.must_equal [musica_meu_violao, musica_ingratidao]
    end

    it 'adiciona-se aos albuns das músicas' do
      musica_meu_violao.albuns.must_equal [album]
      musica_ingratidao.albuns.must_equal [album]
    end
  end

  describe '#artistas' do
    before do
      musica_meu_violao.incluir(simone)
      musica_meu_violao.incluir(simaria)
      musica_ingratidao.incluir(simone)
      musica_ingratidao.incluir(simaria)
    end

    it 'retorna os artistas de um album' do
      album.artistas.must_equal [simone, simaria]
    end
  end
end

describe Musica do
  describe '#duracao_em_minutos' do
    it 'retorna uma string com o tempo de duração da música' do
      musica_meu_violao.duracao_em_minutos.must_equal '3:29'
      musica_ingratidao.duracao_em_minutos.must_equal '3:21'
    end
  end

  describe '#incluir' do
    before do
      musica_meu_violao.incluir(album)
      musica_meu_violao.incluir(simone)
      musica_meu_violao.incluir(simaria)
    end

    it 'adiciona o album aos albuns da música' do
      musica_meu_violao.albuns.must_equal [album]
    end

    it 'adiciona-se as músicas do álbum' do
      album.musicas.must_equal [musica_meu_violao]
    end

    it 'adiciona artista aos artistas da música' do
      musica_meu_violao.artistas.must_equal [simone, simaria]
    end

    it 'adiciona-se as músicas dos artistas' do
      simone.musicas.must_equal [musica_meu_violao]
      simaria.musicas.must_equal [musica_meu_violao]
    end
  end
end

describe Artista do
  describe '#incluir' do
    before do
      simone.incluir(musica_meu_violao)
      simaria.incluir(musica_meu_violao)
    end

    it 'adiciona música as músicas do artista' do
      simone.musicas.must_equal [musica_meu_violao]
      simaria.musicas.must_equal [musica_meu_violao]
    end

    it 'adiciona-se aos artitas da música' do
      musica_meu_violao.artistas.must_equal [simone, simaria]
    end
  end

  describe '#albuns' do
    before do
      musica_meu_violao.incluir(simone)
      musica_meu_violao.incluir(simaria)
      musica_ingratidao.incluir(simone)
      musica_ingratidao.incluir(simaria)
      album.incluir(musica_meu_violao)
      album.incluir(musica_ingratidao)
    end

    it 'retorna os abuns do artista' do
      simone.albuns.must_equal [album]
      simaria.albuns.must_equal [album]
    end
  end
end
