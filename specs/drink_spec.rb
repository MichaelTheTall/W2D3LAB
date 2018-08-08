require("minitest/autorun")
require("minitest/rg")
require_relative("../pub.rb")
require_relative("../drink.rb")
require_relative("../customer.rb")

class DrinkTest < MiniTest::Test

def setup
  @lager = Drink.new("Lager", 3)
  @stout = Drink.new("Stout", 5)
  @cider = Drink.new("Cider", 2)
end

def test_drink_has_name
  assert_equal("Stout", @stout.name)
end

def test_drink_has_price
  assert_equal(3, @lager.price)
end

end
