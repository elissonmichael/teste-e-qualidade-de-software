## Empréstimo de Revistas
Implemente uma solução orientada a objetos que vai gerenciar seus empréstimos
de revistas de quadrinhos aos seus amigos.

## Introdução

- Atributos de revista que deseja guardar: coleção (exemplo: Batman), número (edição) e ano;
- Atributos do amigo que deseja guardar: nome, nome da mãe e local de onde o conhece (exemplo: UCAM);
- Você tem interesse em saber a data inicial do empréstimo e quando o empréstimo foi devolvido;
- Não permita que uma revista seja devolvida em uma data anterior a data na qual ela foi emprestada;
- Não permita que um amigo pegue emprestado uma revista indisponível, ou seja, você precisa verificar se a revista está emprestada antes de efetuar um empréstimo;
- Seu sistema precisa te informar quais revistas estão emprestadas para um determinado amigo.

Exemplo
Considere que você tenha os seguintes objetos:

- amigo    = Amigo(nome: 'Zézim', mae: 'Judite', local: 'UCAM')
- revista  = Revista(colecao: 'Batman', numero: 1, ano: 2014)

Considere que você tenha chamado o seguinte método:

- amigo.pegar_emprestado(revista, data: 22/06/2018)

| Método| Retorno |
| ------------- | ------------- |
| amigo.revistas   | [revista]  |
| amigo.emprestimos.size  | 1  |

Considere que você tenha chamado o seguinte método:

- amigo.devolver(revista, data: 23/06/2018 )

| Método| Retorno |
| ------------- | ------------- |
| amigo.revistas   | []  |
| amigo.emprestimos.size  | 0 |

#### Orientações:

- Escolha um dos dos arquivos de teste: `emprestimo_spec` ou `emprestimo_test`;
- Crie um arquivo na pasta `aaaa-s`, por exemplo `2018-2` (ano-semestre);
  - Crie a pasta caso ela não exista.
- Escreva o código no arquivo que criou na pasta, não altere os arquivos originais dessa pasta;
  - Para esse problema, em específico, você vai criar classes e métodos de acordo com o arquivo de testes;
  - Exemplos: Amigo, Revista, Emprestimo, etc.
- *Lembre-se* de atualizar o caminho no `require_relative` do arquivo de teste que escolheu usar para testar seu código;
- Certifique-se de que seu arquivo está passando em todos os testes;
  - Tente se preocupar em passar em um teste de cada vez enquanto estiver trabalhando na sua solução.
- Faça um commit com a hashtag #41 contendo *apenas* os arquivos da sua solução criados dentro da pasta mencionada no item 2.
  - Cuidado ao usar `git add .`, `git add *`, `git add --all` ou `git add -A`
  - Envios (com testes) em outras linguagens de programação são bem vindos.

Resumos para Ajudar:

- [Minitest](https://gist.github.com/elissonmichael/6d2396a8c3a86697bb947724919d973a)
