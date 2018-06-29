class Produto 
  attr_accessor :preco, :nome
  
  def initialize(nome, preco)
    @nome = nome
    @preco = preco
  end
  
  def to_s
    "Produto: #{@nome}, Preco: $#{preco}"
  end
end

#Classe intermediária para satisfazer a relação N..N entre Produto e Carrinho
class Item 
  attr_accessor :produto, :quantidade, :data
  
  def initialize(produto, quantidade, data)
    @produto = produto
    @quantidade = quantidade
    @data = data
  end  
end

class Carrinho
  attr_accessor :items
  
  def initialize
    @items = []
  end

  #ache produtos sem uma quantidade especifica e adiciona 1 no valor da chave quantidade
  def incluir(item, quantidade=1, data=Time.now.strftime('%d/%m/%y %I:%M%p'))
    indice = self.items.index { |x| x.produto == item }
    indice.nil? ? items << Item.new(item, quantidade, data) : self.items[indice].quantidade += quantidade
  end
  
  def produtos
    items.collect { |item| item.produto }
    #mesmo que fazer o seguinte:
    #produtos = []
    #items.each { |item| produtos << item.produto }
    #produtos
  end
  
  def remover(produto)
    self.items.delete_if { |item| item.produto == produto }
  end
  
  def quantidade(produto)
    items.inject(0) {|sum, prod| sum += prod.quantidade}
  end
  
  def alterar_quantidade(produto, quantidade)
    indice = self.items.index { |x| x.produto == produto }
    self.items[indice].quantidade = quantidade
  end
  
  def total
    items.inject(0) {|sum, prod| sum += prod.produto.preco * prod.quantidade}
  end
  
  def relatorio
    msg = ""
    count = 0
    items.collect do |item|
      count += 1
      msg << ', ' if count > 1
      msg << "#{item.produto.nome} adicionado em #{item.data}"
    end
    msg
  end
end