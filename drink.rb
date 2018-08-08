class Drink

  attr_reader :name, :price

  def initialize(name, price = 0)
    @name = name
    @price = price
  end

end
