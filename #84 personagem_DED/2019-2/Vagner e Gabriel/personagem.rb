class Personagem
    attr_reader :nome, :vida, :forca, :destreza, :inteligencia, :sabedoria, :carisma
  
        def initialize(nome)
          @nome = nome
          @vida = 0
          constroi_personagem
        end
       
        
      def jogar_dados
        jodadas = Array.new(4) { rand(1...6) }
      end
  
      def cria_habilidade
        habilidade = jogar_dados
        habilidade = habilidade.sort
        habilidade.shift
        habilidade = habilidade.sum 
      end
  
     
  
      def constroi_personagem
           habilidades = Array.new(6) { cria_habilidade }
          @forca = habilidades[0]
          @destreza = habilidades[1]
          @constituicao = habilidades[2]
          @inteligencia = habilidades[3]
          @sabedoria = habilidades[4]
          @carisma = habilidades[5]
          @modificador = habilidades.sum
          muda_constituicao
    
      end
      def muda_constituicao
        valor  = @modificador
        @vida = 10 + (valor / 2).ceil
      end
      
  end
  
  p = Personagem.new("fulano")
  puts p.carisma 