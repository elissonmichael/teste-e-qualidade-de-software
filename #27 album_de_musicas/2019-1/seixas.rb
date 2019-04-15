class Album
  attr_reader   :nome, :ano
  attr_accessor :albuns_musicas
  
  def initialize(nome, ano)
    @nome           = nome
    @ano            = ano
    @albuns_musicas = []
  end
  
  def incluir(musica)
    MusicaParaAlbum.new(self, musica).incluir
  end
  
  def musicas
    #pode ser map(&:musica), porém acho mais legivel assim
    @albuns_musicas.map { |album| album.musica }
  end
  
  def artistas
    musicas.map { |album| album.artistas }.flatten.uniq
  end
  
end

class Musica
  attr_reader   :nome, :duracao
  attr_accessor :albuns_musicas, :artistas_musicas
  
  def initialize(nome, duracao)
    @nome             = nome
    @duracao          = duracao
    @albuns_musicas   = []
    @artistas_musicas = []
  end
  
  def incluir(artista_album)
    artista_album.incluir(self)
  end
  
  def artistas
    @artistas_musicas.map { |musica| musica.artista }
  end

  def albuns
    @albuns_musicas.map   { |musica| musica.album }
  end
  
  def duracao_em_minutos
    # https://ruby-doc.org/core-2.5.0/Time.html
    # format directives to pass the test
    Time.at(duracao).utc.strftime("%1M:%S")
  end
  
end

class Artista
  attr_reader   :nome
  attr_accessor :artistas_musicas
  
  def initialize(nome)
    @nome             = nome
    @artistas_musicas = []
  end
  
  def incluir(musica)
    MusicaParaArtista.new(self, musica).incluir
  end
  
  def musicas
    @artistas_musicas.map { |artista| artista.musica }
  end
  
  def albuns
    musicas.map { |artista| artista.albuns }.flatten.uniq
  end
  
end

#######################################################
#classes intermediarias satisfazendo a relação n..n
#######################################################

class MusicaParaAlbum
  attr_accessor :album, :musica
  
  def initialize(album, musica)
    @album  = album
    @musica = musica
  end

  def incluir
    album.albuns_musicas  << self
    musica.albuns_musicas << self
  end
  
end

class MusicaParaArtista
  attr_accessor :artista, :musica
  
  def initialize(artista, musica)
    @artista = artista
    @musica  = musica
  end
  
  def incluir
    artista.artistas_musicas << self
    musica.artistas_musicas  << self
  end

end