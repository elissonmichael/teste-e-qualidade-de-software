## Null Object Pattern
Melhore a qualidade do código da classe Fornecedor livrando-se das condicionais.

## Introdução
Nesse sistema, o contato na classe Fornecedor é opcional. Por isso, em algumas situações um fornecedor é registrado apenas com o local. Diante dessa situação, precisamos estar sempre verificando se existe um contato antes de chamar seus métodos.

Obs.: Você pode usar o Null Object Pattern, também conhecido como Active Nothing, para resolver esse tipo de situação.

Exemplo
Considere que você tenha os seguintes objetos:
- local      = Local(nome: 'Rua de Qualquer Lugar')
- contato    = Contato(nome: 'Fulano', telefone: '99998888', email: 'fulano@email.com')
- fornecedor = Fornecedor(local: local, contato: contato)

| Método| Retorno |
| ------------- | ------------- |
| fornecedor.nome_do_contato  | 'Fulano'  |
| fornecedor.telefone_do_contato  | '99998888'  |
| fornecedor.email_do_contato  | 'fulano@email.com'  |

Exemplo
Considere que você tenha criado um fornecedor sem contato agora:
- fornecedor = Fornecedor(local: local)

| Método| Retorno |
| ------------- | ------------- |
| fornecedor.nome_do_contato  |   'Nenhum Nome'  |
| fornecedor.telefone_do_contato  | 'Nenhum Telefone'  |
| fornecedor.email_do_contato  | 'Nenhum Email'  |

#### Orientações:

- Crie um arquivo na pasta `aaaa-s`, por exemplo `2018-2` (ano-semestre);
  - Crie a pasta caso ela não exista.
- Escreva o código no arquivo que criou na pasta, não altere os arquivos originais dessa pasta;
  - Para esse problema, em específico, você vai copiar o arquivo fornecedor.rb e refatorar ele removendo as condicionais (`if`).
- *Lembre-se* de atualizar o caminho no `require_relative` do arquivo de teste para o arquivo contendo seu código alterado;
- Certifique-se de que seu arquivo está passando em todos os testes;
  - Tente se preocupar em passar em um teste de cada vez enquanto estiver trabalhando na sua solução.
- Faça um commit com a hashtag #46 contendo *apenas* os arquivos da sua solução, criados dentro da pasta mencionada no item 1.
  - Cuidado ao usar `git add .`, `git add *`, `git add --all` ou `git add -A`
  - Envios (com testes) em outras linguagens de programação são bem vindos.

Resumos para Ajudar:

- [Minitest](https://gist.github.com/elissonmichael/6d2396a8c3a86697bb947724919d973a)
- [Null Object Patter in Ruby](https://medium.com/@franzejr/null-object-pattern-in-ruby-12a809bc75cc)
