require_relative 'deck'

RSpec.describe Deck do

  SUITS = [ 'Hearts', 'Spades', 'Clubs', 'Diamonds' ]
  RANKS = [ '1', '2', '3', '4','5', '6', '7', '8' ,'9', 'Jack', 'Queen', 'King' ,'Ace' ]

  before do
    @deck = Deck.new(SUITS, RANKS)
  end

  it "responds to suits" do
    expect(@deck).to respond_to(:suits)
  end

  it "responds to ranks" do
    expect(@deck).to respond_to(:ranks)
  end

  it "responds to shuffle" do
    expect(@deck).to respond_to(:shuffle)
  end

  it "responds to deal_card" do
    expect(@deck).to respond_to(:deal_card)
  end

  it "responds to replace_with" do
    expect(@deck).to respond_to(:replace_with)
  end

  it "pops the stack when the card is dealt" do
    # shuffle deck
    # dealt card will be popped off
    # expecting popped off card to equal dealt card
    card = @deck.shuffle.last
    expect(@deck.deal_card).to eq(card)
  end

  it "dealt card can't be nil" do
    expect(@deck.deal_card).not_to eq(nil)
  end

  it "get a new deck" do
    new_deck = []
    new_deck << Card.new('Clubs', '2')
    new_deck << Card.new('Clubs', '3')
    replica = @deck.dup
    replica.replace_with(new_deck)
    expect(@deck.deck).not_to eq(replica.deck)
  end
end