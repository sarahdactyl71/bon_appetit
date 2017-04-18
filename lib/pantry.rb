require 'pry'
class Pantry

attr_reader :stock

def initialize(stock= {})
  @stock = stock
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

end
