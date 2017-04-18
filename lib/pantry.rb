require 'pry'
require './lib/recipe'

class Pantry

attr_reader :stock, :shopping_list

def initialize(stock= {}, shopping_list = {})
  @stock = stock
  @shopping_list = shopping_list
end

def stock_check(food)
  if stock.keys.include?(food.to_sym)
    stock[food.to_sym]
  else
    0
  end
end

def restock(food, amount)
  if stock_check(food) == 0
  @stock[food.to_sym] = amount
  else
    amount + stock[food.to_sym]
  end
end

def add_to_shopping_list(items)
  if shopping_list == {}
  @shopping_list = items.ingredients
  elsif items.ingredients.keys.include?(shopping_list.keys.any?)
    
  end
end

end
