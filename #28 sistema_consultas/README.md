## Sistema de Consultas
Implemente um sistema de agendamento de consultas por data entre médicos e
pacientes.

## Introdução

* Um médico tem nome e métodos permitem saber quais são os pacientes que estão
agendados para um determinada data e quais datas estão agendadas para um
determinado paciente;
* Um paciente tem nome e um método que o permite agendar uma consulta com um
determinado médico em uma data;
* Não deve ser permitido que um mesmo paciente agende uma mesma data mais de uma
vez.

Exemplo
Considere que você tenha os seguintes objetos:
- medico     = Medico(nome: 'Dra. Satya Ananda')
- paciente1  = Paciente(nome: 'Élisson Michael')
- paciente2  = Paciente(nome: 'Brandon Nyorai')

Considere que você tenha chamado o seguinte método nesses objetos:

- paciente1.agendar_consulta(medico, data)
- paciente2.agendar_consulta(medico, data)

| Método| Retorno |
| ------------- | ------------- |
| medico.pacientes_do_dia(data)  | [paciente1, paciente2]  |
| medico.pacientes_do_dia(outra_data)  | []  |

Considere que a data agendada seja 03/04/2018:

| Método| Retorno |
| ------------- | ------------- |
| medico.datas_de_atendimento_do(paciente1)  | ['03/04/2018']  |

#### Orientações:

- Escolha um dos dos arquivos de teste: `medico_spec` ou `medico_test`;
- Crie um arquivo na pasta `aaaa-s`, por exemplo `2018-2` (ano-semestre);
  - Crie a pasta caso ela não exista.
- Escreva o código no arquivo que criou na pasta, não altere os arquivos originais dessa pasta;
  - Para esse problema, em específico, você vai criar classes e métodos de acordo com o arquivo de testes;
  - Exemplos: Medico, Paciente, Consulta, etc.
- *Lembre-se* de atualizar o caminho no `require_relative` do arquivo de teste que escolheu usar para testar seu código;
- Certifique-se de que seu arquivo está passando em todos os testes;
  - Tente se preocupar em passar em um teste de cada vez enquanto estiver trabalhando na sua solução.
- Faça um commit com a hashtag #28 contendo *apenas* os arquivos da sua solução criados dentro da pasta mencionada no item 2.
  - Cuidado ao usar `git add .`, `git add *`, `git add --all` ou `git add -A`
  - Envios (com testes) em outras linguagens de programação são bem vindos.

Resumos para Ajudar:

- [Minitest](https://gist.github.com/elissonmichael/6d2396a8c3a86697bb947724919d973a)
