class Album
  attr_reader :titulo, :ano
  attr_accessor :albuns_musicas
  def initialize(titulo, ano)
    @titulo = titulo
    @ano = ano
    @albuns_musicas = []
  end

  def incluir(musica)
    AlbumMusica.new(self, musica).incluir
  end

  def musicas
    @albuns_musicas.map(&:musica)
  end

  def artistas
    musicas.map(&:artistas).flatten.uniq
  end
end

class AlbumMusica
  attr_reader :album, :musica
  def initialize(album, musica)
    @album = album
    @musica = musica
  end

  def incluir
    album.albuns_musicas << self
    musica.albuns_musicas << self
  end
end

class Musica
  attr_reader :nome, :segundos
  attr_accessor :albuns_musicas, :artistas_musicas
  def initialize(nome, segundos)
    @nome = nome
    @segundos = segundos
    @albuns_musicas = []
    @artistas_musicas = []
  end

  def duracao_em_minutos
    "#{segundos / 60}:#{segundos % 60}"
  end

  def incluir(album_ou_artista)
    album_ou_artista.incluir(self)
  end

  def albuns
    @albuns_musicas.map(&:album)
  end

  def artistas
    @artistas_musicas.map(&:artista)
  end
end

class ArtistaMusica
  attr_reader :artista, :musica
  def initialize(artista, musica)
    @artista = artista
    @musica = musica
  end

  def incluir
    artista.artistas_musicas << self
    musica.artistas_musicas << self
  end
end

class Artista
  attr_reader :nome
  attr_accessor :artistas_musicas
  def initialize(nome)
    @nome = nome
    @artistas_musicas = []
  end

  def incluir(musica)
    ArtistaMusica.new(self, musica).incluir
  end

  def albuns
    musicas.map(&:albuns).flatten.uniq
  end

  def musicas
    @artistas_musicas.map(&:musica)
  end
end
