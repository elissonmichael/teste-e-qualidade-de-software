### Número Primo

Fazer com que números inteiros sejam capazes de responder se são primos ou não. Um [número primo](https://pt.wikipedia.org/wiki/N%C3%BAmero_primo) tem apenas dois divisores: o número um e ele mesmo.

Exemplos:

| Exemplo| Retorno |
| ------------- | ------------- |
| 0.primo?  | false |
| 1.primo?  | false |
| 2.primo?  | true  |
| 3.primo?  | true  |
| 4.primo?  | false|
| 5.primo? |  true  |
| 6.primo?  | false|
| 7.primo?  | true  |
| 8.primo?  | false|
| 9.primo?  | false|
| 10.primo?  | false|
| 11.primo?  | true  |

Opcional: Ao invés de fazer abrir a classe `Integer` e fazer um monkey patch, tente usar [Refinements](https://docs.ruby-lang.org/en/2.4.0/syntax/refinements_rdoc.html).

#### Orientações:

- Crie um arquivo com seu nome na pasta `aaaa-s`, por exemplo `2018-2` (ano-semestre);
  - Crie a pasta caso ela não exista.
- Escreva o código nesse arquivo, não altere os arquivos originais;
  - Para esse problema, em específico, você pode adicionar um método de instância na classe `Integer` (Ruby 2.4+) ou `Fixnum` (Ruby 2.3-)
- *Lembre-se* de atualizar o caminho no `require_relative` do arquivo de teste;
- Certifique-se de que seu arquivo está passando em todos os testes;
- Faça um commit com a hashtag #78 contendo *apenas* o arquivo da sua solução criado na pasta mencionada no item 1.
- Cuidado ao usar `git add .`, `git add *`, `git add --all` ou `git add -A`

Resumos que podem Ajudar:

- [Minitest](https://gist.github.com/elissonmichael/6d2396a8c3a86697bb947724919d973a)
- [Refinements](https://docs.ruby-lang.org/en/2.4.0/syntax/refinements_rdoc.html).
- [Monkey Patch](https://culttt.com/2015/06/17/what-is-monkey-patching-in-ruby/)
