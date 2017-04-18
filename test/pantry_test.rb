require './lib/pantry'
require 'minitest/autorun'
require 'minitest/pride'

class PantryTest < Minitest::Test

  attr_reader :pantry

  def setup
    @pantry = Pantry.new
  end

  def test_init
    assert_instance_of Pantry, pantry
  end

  def test_can_we_check_stock
    assert_equal 0, pantry.stock_check("Cheese")
    pantry.restock("Cheese", 10)
    assert_equal 10, pantry.stock_check("Cheese")
  end

  def test_can_we_restock
    pantry.restock("Cheese", 10)
    assert_equal 10, pantry.stock_check("Cheese")
    assert_equal 30, pantry.restock("Cheese", 20)
  end
end
