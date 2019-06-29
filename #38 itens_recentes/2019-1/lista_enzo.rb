class Lista
  attr_accessor :itens
  def initialize
    @itens = []
  end

  def adicionar(item)
    if @itens.include?(item)
      @itens.insert(0, @itens.delete(item))
    else
      @itens.prepend item
    end
  end
end
