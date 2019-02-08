require 'item'

describe Item do
  it "can provide it's price" do
    item = Item.new
    item.price
  end
end
