class TavernaMedieval

    def initialize(items)
      @items = items
    end
  
    def atualizar_qualidade
      @items.each do |item|
        if item.nome != "Vinho" and item.nome != "Ingresso para uma Orquestra"
          if item.qualidade > 0
            if item.nome != "Lendário Martelo de Thor"
              if item.nome == "Arco Conjurado"
                item.qualidade = item.qualidade - 2
              else
                item.qualidade = item.qualidade - 1
              end
            end
          end
        else
          if item.qualidade < 50
            item.qualidade = item.qualidade + 1
            if item.nome == "Ingresso para uma Orquestra"
              if item.vence_em < 11
                if item.qualidade < 50
                  item.qualidade = item.qualidade + 1
                end
              end
              if item.vence_em < 6
                if item.qualidade < 50
                  item.qualidade = item.qualidade + 1
                end
              end
            end
          end
        end
        if item.nome != "Lendário Martelo de Thor"
          item.vence_em = item.vence_em - 1
        end
        if item.vence_em < 0
          if item.nome != "Vinho"
            if item.nome != "Ingresso para uma Orquestra"
              if item.qualidade > 0
                if item.nome != "Lendário Martelo de Thor"
                  if item.nome == "Arco Conjurado"
                    item.qualidade = item.qualidade - 2
                  else
                    item.qualidade = item.qualidade - 1
                  end
                end
              end
            else
              item.qualidade = item.qualidade - item.qualidade
            end
          else
            if item.qualidade < 50
              item.qualidade = item.qualidade + 1
            end
          end
        end
      end
    end
  end
  
  class Item
    attr_accessor :nome, :vence_em, :qualidade
    def initialize(nome, vence_em, qualidade)
      @nome = nome
      @vence_em = vence_em
      @qualidade = qualidade
    end
  end