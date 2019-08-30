## Escrever Testes para Moedas

Escrever testes para um módulo com uma função para conversão de números em strings formatadas para dinheiro.

Alguns Exemplos:

| Entrada  | Saída |
| ------------- | ------------- |
| numero_para_moeda(3)  | "R$3,00"  |
| numero_para_moeda(5_500_000)  | "R$5.500.000,00"  |
| numero_para_moeda(1, unidade: '$')  | "$1,00"  |
| numero_para_moeda(1, separador: '.') | "R$1.00"  |
| numero_para_moeda(2500000, delimitador: '-') | "R$2-500-000,00"  |

Orientações:

* Escolha um dos dos arquivos de teste: `moeda_rspec`, `moeda_spec` ou `moeda_test`;
  * Observe que é preciso da gem **Rspec** para o primeiro
  * Os outros podem ser executados com apenas **Ruby**.
* Copie ele para a pasta `aaaa-s`, por exemplo `2018-2` (ano-semestre);
* Renomeie o arquivo com o seu nome;
* Escreva seus testes nesse arquivo, não altere os arquivos originais;
* Lembre-se de atualizar o caminho no `require_relative` do arquivo `moeda.rb`;
* Certifique-se de que seu arquivo está executando sem erros;
* Faça um commit com a hashtag #32 contendo *apenas* os arquivos da sua solução criados dentro da pasta mencionada no item 2.

Resumos para Ajudar:

- [Minitest](https://gist.github.com/elissonmichael/6d2396a8c3a86697bb947724919d973a)
- [Rspec](https://gist.github.com/elissonmichael/455c7fa6f25f4cff6e493cd0f40135ea)
- [Rspec - Stub](https://gist.github.com/elissonmichael/b99ff1506080bc30cdc93e95cd509c6a)
