### Transcrição DNA para RNA

O objetivo dessa atividade é transcrever uma sequência de DNA para RNA.
Crie um método que receba uma string contendo as letras abaixo e retorne uma string onde:

* C transcreve para G
* G transcreve para C
* T transcreve para A
* A transcreve para U

Se a string de entrada contiver caracteres inválidos (nenhum dos quatro acima), o método deve retornar uma string vazia.

Exemplos:

| Entrada  | Saída |
| ------------- | ------------- |
| 'AATT'  | 'UUAA'  |
| 'ACGT'  | 'UGCA'  |
| 'UGCACCAGAAUU'  | 'ACGTGGTCTTAA'  |
| 'XXX'  | ' '  |
| 'ACGTXXXCTTAA'  | ' ' |


Não se esqueça de conferir o(s) arquivo(s) de teste(s) para mais exemplos.

#### Orientações:

- Escolha um dos dos arquivos de teste: `transcricao_rna_spec` ou `transcricao_rna_test`;
  - Observe que é preciso da gem **Rspec** para o primeiro
  - Os outros podem ser executados com apenas **Ruby**.
- Crie um arquivo na pasta atual chamada `aaaa-s`, por exemplo `2018-2` (ano-semestre);
  - Crie a pasta caso ela não exista.
- Escreva o código no arquivo que criou na pasta, não altere os arquivos originais dessa pasta;
  - Para esse problema, em específico, você vai criar uma classe chamada `Complemento`;
  - Após a criação da classe, crie um método de classe chamado `do_dna`.
- *Lembre-se* de atualizar o caminho no `require_relative` do arquivo de teste que escolheu usar para testar seu código;
- Certifique-se de que seu arquivo está passando em todos os testes;
  - Tente se preocupar em passar em um teste de cada vez enquanto estiver trabalhando na sua solução.
- Faça um commit com a hashtag #9 contendo *apenas* os arquivos da sua solução criados dentro da pasta mencionada no item 2.
  - Cuidado ao usar `git add .`, `git add *`, `git add --all` ou `git add -A`
  - Envios (com testes) em outras linguagens de programação são bem vindos.

Resumos para Ajudar:

- [Minitest](https://gist.github.com/elissonmichael/6d2396a8c3a86697bb947724919d973a)
- [Rspec](https://gist.github.com/elissonmichael/455c7fa6f25f4cff6e493cd0f40135ea)
- [Rspec - Stub](https://gist.github.com/elissonmichael/b99ff1506080bc30cdc93e95cd509c6a)
