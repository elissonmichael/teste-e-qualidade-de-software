require_relative "2018-1/elisson ruby/opcoes"
require_relative "2018-1/elisson ruby/jokenpo"

repetir = true
while repetir
  puts "1 - Pedra"
  puts "2 - Papel"
  puts "3 - Tesoura"
  print "Opção do Jogador 1: "
  opcao_1 = Opcao.new(gets.to_i).objeto
  print "Opção do Jogador 2: "
  opcao_2 = Opcao.new(gets.to_i).objeto
  puts Jokenpo.new(opcao_1, opcao_2).vencedor
  puts "Jogar Novamente? [S/N]"
  repetir  = gets.chomp.upcase == ("S")
end
