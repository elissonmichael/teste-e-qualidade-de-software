## Taverna Medieval

Você é um programador recém contratado para trabalhar na Taverna Mediavel. Uma pequena pousada estrategicamente localizada em uma cidade rica, seu atendente é o amigável Élisson. Além de ser uma pousada, existe um comércio de mercadorias. Infelizmente as mercadorias vão perdendo a qualidade com o passar do tempo, ou seja, quanto mais próximo fica do prazo de validade.

Já existe um site que atualiza automaticamente os preços do nosso estoque, que foi criado por um técnico que não tinha muita experiência com programação e depois que o sistema ficou complicado de atualizar e ele "pulou fora". 

Seu trabalho hoje será adicionar uma nova feature para o nosso site para que possamos vender um novo tipo de item. 

## Introdução

* Os itens têm um atributo `vence_em` que guarda o número de dias antes do prazo vencer.
* Os itens têm um atributo `qualidade` que influência seu valor.
* O valor máximo para `qualidade` é 50.
* Todos os dias nosso site executa a função `atualizar_qualidade` que decrementa os valores de `vence_em` e `qualidade` de cada um dos itens do estoque.
* Se o prazo de validade do item vencer, sua `qualidade` diminui duas vezes mais rápido.
* O atributo `qualidade` não pode ficar negativo

## Exceções

* O Item `Vinho` fica mais valioso com o tempo (qualidade aumenta).
* O item `Lendário` não tem seus atributos decrementados (ele não perde qualidade).
  * Ele também pode ter um valor máximo de qualidade 80.
* O item  `Ingresso`, assim como o  `Vinho`, fica mais valioso quando está perto do prazo de vencimento;
  * Sua `qualidade` Incrementa em 2 quando `vencer_em` é menor ou igual a 10.
  * Sua `qualidade` Incrementa em 3 quando `vencer_em` é menor ou igual a 5.
  * Sua `qualidade` vai direto para 0 quando `vencer_em` zera .

## A Nova Feature que a Taverna precisa que Você Implemente

A taverna comprou recentemente um estoque de Arcos Conjurados e precisa adicionar esse item no site.

* Esse Item tem sua qualidade decrementada duas vezes mais rápido que o normal.

O  amigável atendente da taverna Élisson já andou trabalhando nos testes automatizados para te ajudar com essa tarefa, pois o técnico anterior tinha feito tudo sem testes... Você só precisa implementar a nova feature sem quebrar nada no site que já esteja funcionando.
