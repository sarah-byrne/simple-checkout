require 'checkout'

describe Checkout do
  it 'can scan items' do
    checkout = Checkout.new
    expect(checkout).to respond_to(:scan).with(1).argument
  end

  it "can give a total" do
    checkout = Checkout.new
    checkout.total
  end
end
