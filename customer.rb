class Customer

  attr_accessor :name, :wallet, :age, :drunkenness

  def initialize(name, wallet = 0, age, drunkenness)
    @name = name
    @wallet = wallet
    @age = age
    @drunkenness = drunkenness
  end

def buy_drink(drink)
  @wallet -= drink.price
  @drunkenness += drink.alcohol_level.to_i
end

end
