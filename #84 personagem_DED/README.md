# Personagem de D&D

Em um jogo de [Dungeons & Dragons](https://en.wikipedia.org/wiki/Dungeons_%26_Dragons), cada jogador começa criando um personagem para ele jogar. Esse personagem tem, entre outras coisas, seis habilidade: força, destreza, constituição, inteligência, sabedoria e carisma. Essas seis habilidade tem um pontuação que é determinada aleatoriamente. Você faz isso rolando quatro dados de seis lados e guardando a soma dos três maiores valores. Você faz isso seis vezes, uma vez para cada habilidade.

Seu personagem inicialmente tem 10 pontos de vida + o modificador de constituição do personagem. Você descobre o modificador de constituição do seu personagem subtraindo 10 da constituição do seu personagem, dividindo por 2 e arredondando para cima.

Escreva um gerador de personagem aleatório que siga as regras abaixo.

Por exemplo, as seis jogadas dos quatro dados podem se parecer com:

* 5, 3, 1, 6: Você descarta o 1 e soma 5 + 3 + 6 = 14, o qual você atribui para força.
* 3, 2, 5, 3: Você descarta o 2 e soma 3 + 5 + 3 = 11, o qual você atribui para destreza.
* 1, 1, 1, 1: Você descarta o 1 e soma 1 + 1 + 1 = 3, o qual você atribui para constituição.
* 2, 1, 6, 6: Você descarta o 1 e soma 2 + 6 + 6 = 14, o qual você atribui para inteligência.
* 3, 5, 3, 4: Você descarta o 3 e soma 5 + 3 + 4 = 12, o qual você atribui para sabedoria.
* 6, 6, 6, 6: Você descarta o 6 e soma 6 + 6 + 6 = 18, o qual você atribui para carisma.

Por causa da constituição ser 3, o modificar de constituição é -4 e os pontos de vida equivalem a 6.

Escreva também testes automatizados para sua classes e seus métodos.

#### Orientações:

- Crie seus arquivos na pasta `aaaa-s`, por exemplo `2019-1` (ano-semestre);
  - Crie a pasta caso ela não exista.
- Faça um commit com a hashtag #84 contendo *apenas* os arquivos da sua solução criados dentro da pasta mencionada acima.
  - Cuidado ao usar `git add .`, `git add *`, `git add --all` ou `git add -A`
  - Envios (com testes) em outras linguagens de programação, além de Ruby, são bem vindos.

Resumo para Ajudar:

- [Minitest](https://gist.github.com/elissonmichael/6d2396a8c3a86697bb947724919d973a)
