require './lib/pantry'
require './lib/recipe'
require 'minitest/autorun'
require 'minitest/pride'

class PantryTest < Minitest::Test

  attr_reader :pantry
              :r

  def setup
    @pantry = Pantry.new
    @r = Recipe.new("Cheese Pizza")
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

  def test_can_we_add_recipe_to_shopping_list
    r = Recipe.new("Cheese Pizza")
    r.add_ingredient("Cheese", 20)
    r.add_ingredient("Flour", 20)
    pantry.add_to_shopping_list(r)
    ingredients = {"Cheese" => 20, "Flour" => 20}
    assert_equal ingredients, pantry.shopping_list
  end

  def test_can_we_add_another_recipe
    skip
    r = Recipe.new("Spaghetti")
    r.add_ingredient("Noodles", 10)
    r.add_ingredient("Sauce", 10)
    r.add_ingredient("Cheese", 5)
    ingredients = {"Cheese" => 25, "Flour" => 20, "Noodles" => 10, "Sauce" => 10}
    assert_equal ingredients, pantry.add_to_shopping_list(r)
  end

end
