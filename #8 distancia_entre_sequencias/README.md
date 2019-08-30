### Tamanho da Distância Entre 2 Sequências:

O objetivo dessa atividade é retornar o número do tamanho da diferença entre duas sequências (strings). Em outras palavras, quantos caracteres são diferentes entre duas strings com mesmo tamanho?

Crie um método que receba as strings e retorne o valor. Retorne uma mensagem de erro caso os dois parâmetros do método sejam de tamanhos diferentes.

**Alguns Exemplos:**

Entrada | Saída
------------ | -------------
`'', ''` | `0`
`'A', 'A'` | `0`
`'GGACTGA', 'GGACTGA'` | `0`
`'A', 'G'` | `1`
`'AG', 'CT'` | `2`
`'AT', 'CT'` | `1`
`'GGACG', 'GGTCG'` | `1`
`'ACCAGGG', 'ACTATGG'` | `2`
`'AAG', 'AAA'` | `1`
`'AAA', 'AAG'` | `1`
`'TAG', 'GAT'` | `2`
`'GATACA', 'GCATAA'` | `4`
`'GGACGGATTCTG', 'AGGACGGATTCT'` | `9`

#### Orientações:

- Escolha um dos dos arquivos de teste: `distancia_entre_sequencias_spec` ou `distancia_entre_sequencias_test`;
  - Observe que é preciso da gem **Rspec** para o primeiro
  - Os outros podem ser executados com apenas **Ruby**.
- Crie um arquivo na pasta atual chamada `aaaa-s`, por exemplo `2019-2` (ano-semestre);
  - Crie a pasta caso ela não exista.
- Escreva o código no arquivo que criou na pasta, não altere os arquivos originais dessa pasta;
  - Para esse problema, em específico, você vai criar uma classe chamada `DistanciaEntreSequencias`;
  - Após a criação da classe, crie um método de classe chamado `calcular`.
- *Lembre-se* de atualizar o caminho no `require_relative` do arquivo de teste que escolheu usar para testar seu código;
- Certifique-se de que seu arquivo está passando em todos os testes;
  - Tente se preocupar em passar em um teste de cada vez enquanto estiver trabalhando na sua solução.
- Faça um commit com a hashtag #8 contendo *apenas* os arquivos da sua solução criados dentro da pasta mencionada no item 2.
  - Cuidado ao usar `git add .`, `git add *`, `git add --all` ou `git add -A`
  - Envios (com testes) em outras linguagens de programação são bem vindos.

Resumos para Ajudar:

- [Minitest](https://gist.github.com/elissonmichael/6d2396a8c3a86697bb947724919d973a)
- [Rspec](https://gist.github.com/elissonmichael/455c7fa6f25f4cff6e493cd0f40135ea)
