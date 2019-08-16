### Implementação de uma Classe Árvore

Inspirado por Chris Pine [https://pine.fm/LearnToProgram/chap_09.html](url).

Implemente uma classe chamada Arvore.

1.	Ela deve ter idade, altura e várias frutas e ser inicializada com todos esses atributos com valor 0.
2.	Ela deve ter um método passar_um_ano, que faz ela ficar mais velha.
3.  Quando um ano passa ela fica 0,5 metros maior e produz 10 frutas.
4.	Ela morre após 100 anos de idade.
5.	Ela não deve produzir frutos quando é mais nova do que 2 anos ou quando estiver morta.
6.	Ela deve ter um método pegar_uma_fruta, que diminui seu total de frutas atual em 1.
7.	As frutas não colhidas caem de um ano para o outro.
8.	Ela tem um método que responde se ela está viva ou não.

Exemplo
Considere que você tenha acabado de criar um objeto:

| Método| Retorno |
| ------------- | ------------- |
| arvore.idade  | 0  |
| arvore.altura  | 0  |
| arvore.frutas  | 0  |
| arvore.viva?  | true |

Após chamar o método `arvore.passar_um_ano` uma vez:

| Método| Retorno |
| ------------- | ------------- |
| arvore.idade  | 1  |
| arvore.altura  | 0.5  |
| arvore.frutas  | 0  |
| arvore.viva?  | true |

Após chamar o método `arvore.passar_um_ano` três vezes e chamar o método `pegar_uma_fruta`:

| Método| Retorno |
| ------------- | ------------- |
| arvore.idade  | 3  |
| arvore.altura  | 1.5  |
| arvore.frutas  | 9  |
| arvore.viva?  | true |

#### Orientações:

- Crie um arquivo com seu nome na pasta `aaaa-s`, por exemplo `2018-2` (ano-semestre);
  - Crie a pasta caso ela não exista.
- Escreva o código nesse arquivo, não altere os arquivos originais;
  - Para esse problema, em específico, você vai criar uma classe `Arvore`
- *Lembre-se* de atualizar o caminho no `require_relative` do arquivo de teste;
- Certifique-se de que seu arquivo está passando em todos os testes;
  - Tente se preocupar em passar em um teste de cada vez enquanto estiver trabalhando na sua solução.
- Faça um commit com a hashtag #47 contendo *apenas* o arquivo da sua solução criado na pasta mencionada no item 1.
  - Cuidado ao usar `git add .`, `git add *`, `git add --all` ou `git add -A`

Resumo para Ajudar:

- [Minitest](https://gist.github.com/elissonmichael/6d2396a8c3a86697bb947724919d973a)
