class Pub

  attr_reader :name, :till, :drinks

  def initialize(name, till = 0, drinks = [])
    @name = name
    @till = till
    @drinks = drinks
  end

def add_to_till(amount)
  @till += amount
end

end
