class Pub

  attr_accessor :name, :till, :drinks

  def initialize(name, till = 0, drinks = [])
    @name = name
    @till = till
    @drinks = drinks
  end

  def add_to_till(amount)
    @till += amount
  end

  def customer_buy_drink(punter, drink)
    if punter.age >= 18
      add_to_till(drink.price)
      punter.wallet -= drink.price
    else
      return "Yer barred!"
    end

  end

end
