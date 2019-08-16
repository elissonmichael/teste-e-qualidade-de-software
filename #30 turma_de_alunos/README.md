  ### Turma de Alunos:
  Implementar uma relação de um para muitos entre turma e alunos.

  - Uma turma tem muitos alunos. 
  - Aluno como atributos nome e nota.
  - Turma tem métodos que retornam todos os alunos, todos os alunos aprovados e reprovados.
  - Turma tem um método que retorna a média das notas da turma.
  - Você não pode adicionar um mesmo aluno duas vezes em uma mesma turma.
  - Considere que a média para ser aprovado é 6. 

  Exemplo
  Considere que você tenha adicionado 3 alunos à uma turma:
  - jose  = José (com nota 6.0)
  - joao  = João (com nota 5.0)
  - maria = Maria (com nota 7.0)

  | Método| Retorno |
  | ------------- | ------------- |
  | turma.alunos  | [jose, joao, maria]  |
  | turma.aprovados  | [jose, maria]  |
  | turma.reprovados  | [joao] |
  | turma.media |  6.0  |

#### Orientações:

- Escolha um dos dos arquivos de teste: `turma_spec` ou `turma_test`;
- Crie um arquivo na pasta `aaaa-s`, por exemplo `2018-2` (ano-semestre);
  - Crie a pasta caso ela não exista.
- Escreva o código no arquivo que criou na pasta, não altere os arquivos originais dessa pasta;
  - Para esse problema, em específico, você vai criar classes e métodos de acordo com o arquivo de testes;
  - Exemplos: Turma, Aluno, etc.
- *Lembre-se* de atualizar o caminho no `require_relative` do arquivo de teste que escolheu usar para testar seu código;
- Certifique-se de que seu arquivo está passando em todos os testes;
  - Tente se preocupar em passar em um teste de cada vez enquanto estiver trabalhando na sua solução.
- Faça um commit com a hashtag #30 contendo *apenas* os arquivos da sua solução criados dentro da pasta mencionada no item 2.
  - Cuidado ao usar `git add .`, `git add *`, `git add --all` ou `git add -A`
  - Envios (com testes) em outras linguagens de programação são bem vindos.

Resumos para Ajudar:

- [Minitest](https://gist.github.com/elissonmichael/6d2396a8c3a86697bb947724919d973a)
