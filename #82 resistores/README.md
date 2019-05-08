  ### Cores de Resistores
  Você precisa saber duas coisas sobre resistores:

  - Cada resistor tem uma valor de resistência;
  - Resistores são pequenos, tão pequenos que se você colocasse os valores de resistência neles, seria difícil de ler;

  Para contornar esse problema, os fabricantes imprimem faixas de cores nos resistores para representar seus valores de resistência. Cada faixa funciona como o dígito de um número.

  Escreva um programa, junto com testes automatizados, que receba cores como entrada e retorne o número correto.

- Preto: 0
- Marrom: 1
- Vermelho: 2
- Laranja: 3
- Amarelo: 4
- Verde: 5
- Azul: 6
- Violeta: 7
- Cinza: 8
- Branco: 9

  Por Exemplo:
  Se um resistor tiver a faixa marrom (valor 1) seguido de uma faixa verde (valor 5), isso seria traduzido para o número 15.

  | Método| Retorno |
  | ------------- | ------------- |
  | Resistencia.valor(['marrom', 'preto'])  | 10  |
  | Resistencia.valor(['azul', 'cinza'])  | 68  |
  | Resistencia.valor(['amarelo', 'violeta'])  | 47 |
  | Resistencia.valor(['laranja', 'laranja']) |  33  |

#### Orientações:

- Crie seus arquivos na pasta `aaaa-s`, por exemplo `2019-1` (ano-semestre);
  - Crie a pasta caso ela não exista.
- Faça um commit com a hashtag #82 contendo *apenas* os arquivos da sua solução criados dentro da pasta mencionada acima.
  - Cuidado ao usar `git add .`, `git add *`, `git add --all` ou `git add -A`
  - Envios (com testes) em outras linguagens de programação, além de Ruby, são bem vindos.

Resumo para Ajudar:

- [Minitest](https://gist.github.com/elissonmichael/6d2396a8c3a86697bb947724919d973a)
