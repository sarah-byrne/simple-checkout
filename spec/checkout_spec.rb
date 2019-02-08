require 'checkout'
require 'item'

describe Checkout do
  it 'can scan items' do
    checkout = Checkout.new
    expect(checkout).to respond_to(:scan).with(1).argument
  end

  it "can give a total" do
    checkout = Checkout.new
    checkout.total
  end

    it "can calculate the total from the sum of scanned item prices" do
      item1 = Item.new(1)
      item2 = Item.new(4.50)
      checkout = Checkout.new

      checkout.scan(item1)
      checkout.scan(item2)

      expect(checkout.total).to eq(item1.price + item2.price)
    end

    it "can display the total in £xx.xx format" do
      item1 = Item.new(1)
      item2 = Item.new(4.50)
      checkout = Checkout.new

      checkout.scan(item1)
      checkout.scan(item2)

      expect(checkout.display_total).to eq("£5.50")
    end
end
