class Customer

  attr_accessor :name, :wallet, :age

  def initialize(name, wallet = 0, age)
    @name = name
    @wallet = wallet
    @age = age
  end

def buy_drink(drink)
  @wallet -= drink.price
end

end
