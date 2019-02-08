require_relative 'item'

class Checkout
  attr_reader :total

  def initialize
    @total = 0
  end

  def scan(item)
    @total += item.price
  end
end
