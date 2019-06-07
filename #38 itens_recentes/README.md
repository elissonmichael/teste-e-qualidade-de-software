## Lista de Itens Recentes
Implemente uma classe que representa uma Lista de Itens Recentemente Usados.
Escreva testes automatizados para sua classe.

## Introdução

* O item mais recente deve ser o primeiro item da lista
* Não deve existir duplicações do mesmo item na lista
* Quando um mesmo item é adicionado novamente na lista ele fica no topo (primeiro item)

**Exemplo**

Considere que você tenha um objeto da classe Lista: `lista`

Considere que você tenha chamado os seguintes métodos, nessa ordem,
nesse objeto:
- lista.adicionar('Música 1')
- lista.adicionar('Vídeo 2')

| Método| Retorno |
| ------------- | ------------- |
| lista.itens  | ['Vídeo 2, 'Música 1']  |

Considere que você tenha chamado o seguinte método nesse objeto:
- lista.adicionar('Imagem 3')

| Método| Retorno |
| ------------- | ------------- |
| lista.itens  | ['Imagem 3', 'Vídeo 2, 'Música 1']  |

Finalmente, considere que você tenha tentado adicionar um item repetido:
- lista.adicionar('Música 1')

| Método| Retorno |
| ------------- | ------------- |
| lista.itens  | ['Música 1', 'Imagem 3', 'Vídeo 2]  |

#### Orientações:

- Crie um arquivo dentro da pasta `aaaa-s`, por exemplo `2018-2` (ano-semestre);
  - Crie a pasta caso ela não exista.
- Escreva o código e os testes no(s) arquivo(s) que criou (dentro da pasta mencionada no primeiro item).
- Certifique-se de que seu arquivo está passando em todos os testes;
- Faça um commit com a hashtag #38 contendo *apenas* os arquivos da sua solução criados dentro da pasta mencionada no item 1.
  - Cuidado ao usar `git add .`, `git add *`, `git add --all` ou `git add -A`
  - Envios (com testes) em outras linguagens de programação são bem vindos.

Resumos para Ajudar:

- [Minitest](https://gist.github.com/elissonmichael/6d2396a8c3a86697bb947724919d973a)
- [Rspec](https://gist.github.com/elissonmichael/455c7fa6f25f4cff6e493cd0f40135ea)
- [Rspec - Stub](https://gist.github.com/elissonmichael/b99ff1506080bc30cdc93e95cd509c6a)
