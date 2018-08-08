class Pub

  attr_reader :name, :till, :drinks

  def initialize(name, till = 0, drinks = [])
    @name = name
    @till = till
    @drinks = drinks
  end

end
