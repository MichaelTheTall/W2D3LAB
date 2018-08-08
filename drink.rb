class Drink

  attr_accessor :name, :price, :alcohol_level

  def initialize(name, price = 0, alcohol_level)
    @name = name
    @price = price
    @alcohol_level = alcohol_level
  end

end
