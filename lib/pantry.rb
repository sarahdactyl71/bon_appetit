require 'pry'
class Pantry

attr_reader :stock

def initialize(stock= {})
  @stock = stock
end

def stock_check(food)
  if stock.include?(food)
    stock.food
end

def restock(food, amount)
  binding.pry
  @stock[:food] = amount
end

end
