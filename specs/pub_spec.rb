require("minitest/autorun")
require("minitest/rg")
require_relative("../pub.rb")
require_relative("../drink.rb")
require_relative("../customer.rb")

class PubTest < MiniTest::Test

  def setup

    @customer1 = Customer.new("Bob", 20, 19, 0)
    @customer2 = Customer.new("Helen", 50, 30, 0)
    @customer3 = Customer.new("Larry", 10, 16, 0)
    @customer4 = Customer.new("Ben", 10, 16, 0)

    @lager = Drink.new("Lager", 3, 1)
    @stout = Drink.new("Stout", 5, 2)
    @cider = Drink.new("Cider", 2, 1)

    @drinks = [@lager, @stout, @cider]

    @pub = Pub.new("The Angry Badger", 1000, @drinks)

  end

  def test_pub_has_name
    assert_equal("The Angry Badger", @pub.name)
  end

  def test_pub_has_money
    assert_equal(1000, @pub.till)
  end

  def test_pub_has_drinks
    assert_equal(3, @pub.drinks.count)
  end

  def test_add_to_till
    @pub.add_to_till(50)
    assert_equal(1050, @pub.till)
  end

  def test_customer_buy_drink
    @pub.customer_buy_drink(@customer1, @stout)
    assert_equal(15, @customer1.wallet)
    assert_equal(1005, @pub.till)
    assert_equal(2, @customer1.drunkenness)
  end

  def test_customer_underage
    assert_equal("Yer barred!", @pub.customer_buy_drink(@customer3, @lager))
  end

  def test_customer_drunk
    assert_equal("Yer barred!", @pub.customer_buy_drink(@customer4, @cider))
  end

end
