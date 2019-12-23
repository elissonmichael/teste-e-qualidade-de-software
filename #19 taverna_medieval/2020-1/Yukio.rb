class Item
    attr_accessor :nome, :vence_em, :qualidade
    def initialize(nome, vence_em, qualidade)
        @nome = nome
        @vence_em = vence_em
        @qualidade = qualidade
    end
    def e_do_tipo(tipo)
        @nome.split.include?(tipo)
    end


end
class TavernaMedieval
    attr_accessor :item
    def initialize(item)
        @items = item
    end
    def atualizar_qualidade
        @items.each do |item|
            if item.e_do_tipo("Vinho")
                item.vence_em -= 1 and item.qualidade += 1 unless item.vence_em == 0 || item.qualidade >= 50
                item.qualidade += 2 if item.vence_em == 0
            elsif item.e_do_tipo("Ingresso")
                if item.vence_em == 0
                    item.qualidade = 0 
                else
                    item.vence_em -= 1
                    item.qualidade += 1 
                end
                if item.qualidade>=50 
                    item.qualidade -= 1
                end
                if item.vence_em <= 10 && item.vence_em > 5
                    item.qualidade += 1 unless item.qualidade>=50 
                elsif item.vence_em <= 5 && item.vence_em > 0
                    item.qualidade += 2 unless item.qualidade>=50
                end

            elsif item.e_do_tipo("Conjurado")
                if item.vence_em == 0
                    item.qualidade -= 4
                else
                    item.vence_em -= 1
                    item.qualidade -= 2 if item.qualidade > 0 && item.vence_em > 0
                end

            elsif item.e_do_tipo('Lendário')
            else
                item.qualidade -= 1 and item.vence_em -= 1 if item.qualidade > 0 && item.vence_em > 0             
                item.qualidade -= 2 if item.qualidade > 0 && item.vence_em == 0
            end
        end            
    end
end