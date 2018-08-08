require("minitest/autorun")
require("minitest/rg")
require_relative("../pub.rb")
require_relative("../drink.rb")
require_relative("../customer.rb")

class CustomerTest < MiniTest::Test

def setup
  @customer1 = Customer.new("Bob", 20)
  @customer2 = Customer.new("Helen", 50)
end

def test_customer_has_name
  assert_equal("Bob", @customer1.name)
end

def test_customer_has_dosh
  assert_equal(50, @customer2.wallet)
end

end