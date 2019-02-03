### Número de Ocorrências de Palavras em uma Frase

Usar o arquivo de testes para implementação de um método que retorne um hash com a ocorrência de cada palavra em uma frase.

#### Exemplos:

Entrada | Saída
------------ | -------------
`'palavra'` | `{ 'palavra' => 1 }`
`'uma de cada'` | `{ 'uma' => 1, 'de' => 1, 'cada' => 1 }`
`'um peixe dois peixe vermelho peixe azul peixe'` | `{ 'um' => 1, 'peixe' => 4, 'dois' => 1, 'vermelho' => 1, 'azul' => 1 }`
`'um,dois,quatro'` | `{ 'um' => 1, 'dois' => 1, 'quatro' => 1 }`
`'vai Vai VAI Para para'` | `{ 'vai' => 3, 'para' => 2 }`

#### Orientações:

- Escolha um dos dos arquivos de teste: `contagem_palavras_rspec`, `contagem_palavras_spec` ou `contagem_palavras_test`;
  - Observe que é preciso da gem **Rspec** para o primeiro
  - Os outros podem ser executados com apenas **Ruby**.
- Crie um arquivo dentro da pasta `aaaa-s`, por exemplo `2018-2` (ano-semestre);
  - Crie a pasta caso ela não exista.
- Escreva o código no arquivo que criou na pasta, não altere os arquivos originais dessa pasta;
  - Para esse problema, em específico, você vai criar uma classe chamada `Frase`;
  - Após a criação da classe, crie um método de instância chamado `conte_palavras`.
- Lembre-se de atualizar o caminho no `require_relative` do arquivo de teste que escolheu usar para testar seu código;
- Certifique-se de que seu arquivo está passando em todos os testes;
  - Tente se preocupar em passar em um teste de cada vez enquanto estiver trabalhando na sua solução.
- Faça um commit com a hashtag #7 contendo *apenas* os arquivos da sua solução criados dentro da pasta mencionada no item 2.
  - Cuidado ao usar `git add .`, `git add *`, `git add --all` ou `git add -A`
- Ler sobre [Hash](https://docs.ruby-lang.org/en/2.3.0/Hash.html) pode te ajudar nessa atividade.

Resumos para Ajudar:
- [Hash](https://docs.ruby-lang.org/en/2.3.0/Hash.html)
- [Minitest](https://gist.github.com/elissonmichael/6d2396a8c3a86697bb947724919d973a)
- [Rspec](https://gist.github.com/elissonmichael/455c7fa6f25f4cff6e493cd0f40135ea)
- [Rspec - Stub](https://gist.github.com/elissonmichael/b99ff1506080bc30cdc93e95cd509c6a)
