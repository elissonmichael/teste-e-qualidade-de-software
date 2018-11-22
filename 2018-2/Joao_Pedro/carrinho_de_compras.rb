class Produto

  attr_accessor :name, :value, :quantity, :data

  def initialize(name, value)
    @name = name
    @value = value
    @quantity = 1
  end

end

class Carrinho

  attr_accessor :products
  
  def initialize
    @products = Array.new()
  end

  def include(product)
    data = Time.now.strftime('%d/%m/%y %I:%M%p')
    product.data = data
    if @products.include? product
      cart_product = @products.detect { |e| e == product  }
      cart_product.quantity += 1
    else
      @products.push(product)
    end
  end

  def remove(product)
    @products.delete(product)
  end

  def quantity(product)
    cart_product = @products.detect { |e| e == product  }
    cart_product.quantity
  end

  def chance_quantity(product, new_quantity)
    cart_product = @products.detect { |e| e == product  }
    product.quantity = new_quantity
  end

  def total
    total = 0
    @products.each { |e| total += e.value*e.quantity  }
    total
  end

  def relatory
    data = Time.now.strftime('%m/%d/%y %I:%M%p')
    product_name = []
    @products.each { |e| product_name << "#{e.name} adicionado em #{e.data}" }
    return product_name*", "
  end

end
