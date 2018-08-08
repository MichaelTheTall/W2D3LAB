require("minitest/autorun")
require("minitest/rg")
require_relative("../pub.rb")
require_relative("../drink.rb")
require_relative("../customer.rb")
require_relative("../food.rb")

class DrinkTest < MiniTest::Test

def setup
  @lager = Drink.new("Lager", 3, 1)
  @stout = Drink.new("Stout", 5, 2)
  @cider = Drink.new("Cider", 2, 1)
end

def test_drink_has_name
  assert_equal("Stout", @stout.name)
end

def test_drink_has_price
  assert_equal(3, @lager.price)
end

def test_drink_booziness
  assert_equal(2, @stout.alcohol_level)
end

end
