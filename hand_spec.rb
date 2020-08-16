require_relative 'card'
require_relative 'hand'

RSpec.describe Hand do

  before do
    @hand = Hand.new
  end

  it "responds to dealt_cards" do
    expect(@hand).to respond_to(:dealt_cards)
  end

  describe "add_card method" do

    it "responds to add_card" do
      expect(@hand).to respond_to(:add_card)
    end

    it "returns the number of added cards" do
      card_1 = Card.new('Hearts', '2')
      card_2 = Card.new('Hearts', '3')

      @hand.add_card( card_1 )
      @hand.add_card( card_2 )

      expect(@hand.dealt_cards.size).to eq(2)
    end

    it "returns the correct property of added card" do
      card_1 = Card.new('Hearts', '2')
      @hand.add_card( card_1 )
      expect(@hand.dealt_cards.first.suit).to eq('Hearts')
      expect(@hand.dealt_cards.first.rank).to eq('2')
    end

  end

  describe "get_cards_value method" do

    it "responds to get_cards_value" do
      expect(@hand).to respond_to(:get_cards_value)
    end

    it "returns the correct value with no Ace" do
      card_1 = Card.new('Hearts', '2')
      card_2 = Card.new('Hearts', '3')

      @hand.add_card( card_1 )
      @hand.add_card( card_2 )

      expect(@hand.get_cards_value).to eq( 5 )
    end

    it "returns the correct value with Ace" do


    end

    it "returns the correct value with Ace and Queen" do

    end
  end

  describe "Hand output" do

    it "returns the correct output if show is true for all cards" do

    end

    it "returns the correct output if show is false for 1 card" do

    end
  end
end