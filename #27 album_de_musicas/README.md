## Album de Músicas
Implemente um sistema de registro de músicas, artistas e álbuns.

## Introdução

* Um álbum tem nome e ano como propriedades;
* Uma música tem nome e duração em segundos como propriedades;
* Uma música pode retornar a duração formatada em `minutos:segundos`;
* Um álbum tem várias músicas;
* Um artista tem nome e várias músicas;
* Uma música tem vários artistas;
* Um artista tem vários álbuns através das músicas;
* Um álbum tem vários artistas através das músicas;

Exemplo
Considere que você tenha os seguintes objetos:
- album              = Album(nome: 'Bar Das Coleguinhas', ano: 2015)
- simone             = Artista(nome: 'Simone')
- simaria            = Artista(nome: 'Simaria')
- musica_meu_violao  = Musica(nome: 'Meu Violão e Nosso Cachorro', segundos: 209)
- musica_ingratidao  = Musica(nome: 'Ingratidão', segundos: 201)

Considere que você tenha chamado os seguintes métodos:

- album.incluir(musica_meu_violao)
- album.incluir(musica_ingratidao)
- musica_meu_violao.incluir(simone)
- musica_meu_violao.incluir(simaria)
- musica_ingratidao.incluir(simone)
- musica_ingratidao.incluir(simaria)

| Método| Retorno |
| ------------- | ------------- |
| album.musicas  | [musica_meu_violao, musica_ingratidao]  |
| album.artistas  | [simone, simaria]  |
| musica_meu_violao.albuns  | [album]  |
| musica_ingratidao.albuns  | [album] |
| musica_meu_violao.duracao_em_minutos |  '3:29'  |
| musica_ingratidao.duracao_em_minutos |  '3:21'  |
| simone.musicas | [musica_meu_violao, musica_ingratidao]  |
| simaria.musicas | [musica_meu_violao, musica_ingratidao]  |

#### Orientações:

- Escolha um dos dos arquivos de teste: `album_de_musica_spec` ou `album_de_musica_test`;
- Crie um arquivo na pasta `aaaa-s`, por exemplo `2018-2` (ano-semestre);
  - Crie a pasta caso ela não exista.
- Escreva o código no arquivo que criou na pasta, não altere os arquivos originais dessa pasta;
  - Para esse problema, em específico, você vai criar classes e métodos de acordo com o arquivo de testes;
  - Exemplos: Artista, Album, Musica, etc.
- *Lembre-se* de atualizar o caminho no `require_relative` do arquivo de teste que escolheu usar para testar seu código;
- Certifique-se de que seu arquivo está passando em todos os testes;
  - Tente se preocupar em passar em um teste de cada vez enquanto estiver trabalhando na sua solução.
- Faça um commit com a hashtag #27 contendo *apenas* os arquivos da sua solução criados dentro da pasta mencionada no item 2.
  - Cuidado ao usar `git add .`, `git add *`, `git add --all` ou `git add -A`
  - Envios (com testes) em outras linguagens de programação são bem vindos.

Resumos para Ajudar:

- [Minitest](https://gist.github.com/elissonmichael/6d2396a8c3a86697bb947724919d973a)
