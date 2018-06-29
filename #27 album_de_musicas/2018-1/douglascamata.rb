class Album
  attr_accessor :nome, :ano, :musicas
  def initialize(nome, ano)
    @nome = nome
    @ano = ano
    @musicas = []
  end

  def incluir(musica)
    @musicas << musica
    musica.albuns << self
  end

  def artistas
    musicas.map(&:artistas).flatten.uniq
  end
end

class Musica
  attr_accessor :nome, :duracao,
                :albuns, :artistas
  def initialize(nome, duracao_em_segundos)
    @nome = nome
    @duracao = duracao_em_segundos
    @albuns = []
    @artistas = []
  end

  def duracao_em_minutos
    "#{duracao / 60}:#{duracao % 60}"
  end

  def incluir(album_ou_artista)
    album_ou_artista.incluir(self)
  end
end

class Artista
  attr_reader :nome, :musicas
  def initialize(nome)
    @nome = nome
    @musicas = []
  end

  def incluir(musica)
    @musicas << musica
    musica.artistas << self
  end

  def albuns
    @musicas.map(&:albuns).flatten.uniq
  end
end
