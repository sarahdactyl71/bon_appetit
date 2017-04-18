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

def list_check(food)
  if shipping_list.keys.include?(food.to_sym)
    shopping_list[food.to_sym]
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

def update_shopping(food, amount)
  if list_check(food) == 0
  @shopping_list[food.to_sym] = amount
  else
    amount + shopping_list[food.to_sym]
  end
end

def add_to_shopping_list(items)
  if shopping_list == {}
  @shopping_list = items.ingredients
  # else
  #   items.ingredients.keys.each do |item|
  #   items.ingredients.values.each do |amount|
  #     update_shopping(item, amount)
  #   end
  #   end
  end
  # binding.pry
end

def print_shopping_list
  #I know this probably isn't correct, but I'mg
  #going to type what I think I could do
  shopping_list.each do |key, value|
    "* #{{key}, #{{value}}}"
end

end
