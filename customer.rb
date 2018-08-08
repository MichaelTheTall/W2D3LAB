class Customer

  attr_reader :name, :wallet

  def initialize(name, wallet = 0)
    @name = name
    @wallet = wallet
  end

end
