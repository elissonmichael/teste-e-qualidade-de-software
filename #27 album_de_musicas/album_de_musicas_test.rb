require 'minitest/autorun'
#require_relative 'aaaa-s/nome'

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

class AlbumTest < Minitest::Test
  def test_inclusao_de_musicas_em_album
    album.incluir(musica_meu_violao)
    album.incluir(musica_ingratidao)
    assert_equal album.musicas, [musica_meu_violao, musica_ingratidao]
    assert_equal musica_meu_violao.albuns, [album]
    assert_equal musica_ingratidao.albuns, [album]
  end

  def test_retorna_seus_cantores
    musica_meu_violao.incluir(simone)
    musica_meu_violao.incluir(simaria)
    musica_ingratidao.incluir(simone)
    musica_ingratidao.incluir(simaria)
    album.incluir(musica_meu_violao)
    album.incluir(musica_ingratidao)
    assert_equal album.artistas, [simone, simaria]
  end
end

class MusicaTest < Minitest::Test
  def test_duracao_em_minutos
    assert_equal musica_meu_violao.duracao_em_minutos, '3:29'
    assert_equal musica_ingratidao.duracao_em_minutos, '3:21'
  end

  def test_inclusao_de_album_em_musica
    musica_meu_violao.incluir(album)
    assert_equal album.musicas, [musica_meu_violao]
    assert_equal musica_meu_violao.albuns, [album]
  end

  def test_inclusao_de_artista_em_musica
    musica_meu_violao.incluir(simone)
    musica_meu_violao.incluir(simaria)
    assert_equal musica_meu_violao.artistas, [simone, simaria]
    assert_equal simone.musicas, [musica_meu_violao]
    assert_equal simaria.musicas, [musica_meu_violao]
  end
end

class ArtistaTest < Minitest::Test
  def test_inclusao_de_musica_em_artista
    simone.incluir(musica_meu_violao)
    simaria.incluir(musica_meu_violao)
    assert_equal simone.musicas, [musica_meu_violao]
    assert_equal simaria.musicas, [musica_meu_violao]
    assert_equal musica_meu_violao.artistas, [simone, simaria]
  end

  def test_retorna_seus_albuns
    musica_meu_violao.incluir(simone)
    musica_meu_violao.incluir(simaria)
    musica_ingratidao.incluir(simone)
    musica_ingratidao.incluir(simaria)
    album.incluir(musica_meu_violao)
    album.incluir(musica_ingratidao)
    assert_equal simone.albuns, [album]
    assert_equal simaria.albuns, [album]
  end
end
