
require_relative 'card'

RSpec.describe Card do

  before do
    @card = Card.new("Diamonds", "8")
  end

  #responds to getter methods
  it "responds to suit" do
    expect(@card).to respond_to(:suit)
  end

  it "responds to rank" do
    expect(@card).to respond_to(:rank)
  end

  it "responds to show" do
    expect(@card).to respond_to(:show)
  end

  it "show method returns true" do
    expect(@card.show).to eq(true)
  end

  it "suit method return a Diamonds" do
    expect(@card.suit).to eq('Diamonds')
  end

  it "rank method return an 8" do
    expect(@card.rank).to eq('8')
  end

  it "outputs rank and suit if show is true" do
    expect("#{@card}").to eq("rank: #{@card.rank} suit: #{@card.suit}")
  end

  it "doesn't outputs rank and suit if show is false" do
    @card.show = false
    expect("#{@card}").to eq("")
  end
end