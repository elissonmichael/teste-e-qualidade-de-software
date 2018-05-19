class Jokenpo
  def initialize(opcao_1, opcao_2)
    @opcao_1 = opcao_1
    @opcao_2 = opcao_2
  end

  def vencedor
    return "Empate" if empate
    if @opcao_1.vence(@opcao_2)
      jogador_1_venceu
    else
      jogador_2_venceu
    end
  end

  private
  def empate
    @opcao_1.class == @opcao_2.class
  end

  def jogador_1_venceu
    "Jogador 1 Venceu. " +
    "#{@opcao_1.class} Vence #{@opcao_2.class}"
  end

  def jogador_2_venceu
    "Jogador 2 Venceu. " +
    "#{@opcao_2.class} Vence #{@opcao_1.class}"
  end
end
