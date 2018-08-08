require("minitest/autorun")
require("minitest/rg")
require_relative("../pub.rb")
require_relative("../drink.rb")
require_relative("../customer.rb")
require_relative("../food.rb")


class CustomerTest < MiniTest::Test

def setup
  @customer1 = Customer.new("Bob", 20, 18, 0)
  @customer2 = Customer.new("Helen", 50, 26, 0)
  @lager = Drink.new("Lager", 3, 1)
  @chips = Food.new("Chips", 3, 1)
end

def test_customer_has_name
  assert_equal("Bob", @customer1.name)
end

def test_customer_has_dosh
  assert_equal(50, @customer2.wallet)
end

def test_buy_drink
  @customer2.buy_drink(@lager)
  assert_equal(47, @customer2.wallet)
  assert_equal(1, @customer2.drunkenness)
end

def test_eat
  @customer1.drunkenness = 1
  @customer1.eat(@chips)
  assert_equal(0, @customer1.drunkenness)
end

def test_buy_food
  @customer2.drunkenness = 1
  @customer2.buy_food(@chips)
  assert_equal(0, @customer2.drunkenness)
  assert_equal(47, @customer2.wallet)
end

end
