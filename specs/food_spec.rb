require("minitest/autorun")
require("minitest/rg")
require_relative("../pub.rb")
require_relative("../drink.rb")
require_relative("../customer.rb")
require_relative("../food.rb")

class FoodTest < MiniTest::Test

  def setup
    @chips = Food.new("Chips", 4, 1)
    @pie = Food.new("Pie", 5, 2)
  end

  def test_food_has_name
    assert_equal("Pie", @pie.name)
  end

  def test_food_has_price
    assert_equal(4, @chips.price)
  end

  def test_food_rejuv
    assert_equal(2, @pie.rejuvenation_level)

  end

end
