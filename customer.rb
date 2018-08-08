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

def eat(food)
  @drunkenness -= food.rejuvenation_level.to_i
end

def buy_food(food)
  @wallet -= food.price
  eat(food)
end

end
