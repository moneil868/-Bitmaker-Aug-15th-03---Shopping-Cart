class Product

  @@tax_rate = 0.02

# Each product has a name, base price, and tax rate.
  def initialize(name, base_price)
    @name = name
    @base_price = base_price
    @tax_rate = @@tax_rate
  end

# There should also be a method to calculate and return the product's total price based on the base price and tax rate.
  def calculate_total
    total_price = @base_price + (@tax_rate * @base_price)
    return total_price
  end

  def get_name
    @name
  end

  def get_base_price
    @base_price
  end

  def get_tax
    tax = @tax_rate * 100
    return tax
  end

end
