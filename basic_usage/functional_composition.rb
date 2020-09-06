# functional composition is a way of joining functions together

# ecommerce example (not using functions - lambdas, procs, currying)
class Report
  def initialize(products)
    @products = products
  end

  # method to calculate avg sales price
  def run
    money_taken = @products.reduce(0) do |total, product|
      (product.price * product.sales) + total
    end

    total_sales = @products.reduce(0) do |total, product|
      product.sales + total
    end

    # avg selling price
    money_taken / total_sales
  end
end

# if we had to filter by color
class ColorFilter
  attr_reader :color

  def initialize(color)
    @color = color
  end

  def apply(products)
    products.select { |p| p.color == @color }
  end

  def to_s
    "Filtering for #{color} products"
  end
end
