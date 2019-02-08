require_relative 'item'

class Checkout
  attr_reader :total

  def initialize
    @total = 0
  end

  def scan(item)
    @total += item.price
  end

  def display_total
    "£%.2f" % @total 
  end
end
