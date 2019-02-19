require "minitest/autorun"
require_relative "2018-1/elisson ruby/opcoes"
require_relative "2018-1/elisson ruby/jokenpo"

class JokenpoTest < Minitest::Test
  def setup
    @tesoura = Tesoura.new
    @papel   = Papel.new
    @pedra   = Pedra.new
  end

  def test_jogador_1_vence
    assert_equal "Jogador 1 Venceu. Papel Vence Pedra",
                  Jokenpo.new(@papel, @pedra).vencedor
    assert_equal "Jogador 1 Venceu. Pedra Vence Tesoura",
                  Jokenpo.new(@pedra, @tesoura).vencedor
    assert_equal "Jogador 1 Venceu. Tesoura Vence Papel",
                  Jokenpo.new(@tesoura, @papel).vencedor
  end

  def test_jogador_2_vence
    assert_equal "Jogador 2 Venceu. Papel Vence Pedra",
                  Jokenpo.new(@pedra, @papel).vencedor
    assert_equal "Jogador 2 Venceu. Pedra Vence Tesoura",
                  Jokenpo.new(@tesoura, @pedra).vencedor
    assert_equal "Jogador 2 Venceu. Tesoura Vence Papel",
                  Jokenpo.new(@papel, @tesoura).vencedor
  end

  def test_empate
    assert_equal "Empate",
                  Jokenpo.new(@pedra, @pedra).vencedor
    assert_equal "Empate",
                  Jokenpo.new(@papel, @papel).vencedor
    assert_equal "Empate",
                  Jokenpo.new(@tesoura, @tesoura).vencedor
  end
end
