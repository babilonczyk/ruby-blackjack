require_relative 'blackjack'

RSpec.describe Blackjack do

  SUITS = [ 'Hearts', 'Spades', 'Clubs', 'Diamonds' ]
  RANKS = [ '2', '3', '4','5', '6', '7', '8' ,'9', '10', 'Jack', 'Queen', 'King' ,'Ace' ]

  before do
    @blackjack = Blackjack.new(SUITS, RANKS)
  end

  describe "methods" do
    it "responds to dealer_hand" do
      expect(@blackjack).to respond_to(:dealer_hand)
    end

    it "responds to player_hand" do
      expect(@blackjack).to respond_to(:player_hand)
    end

    it "responds to playing" do
      expect(@blackjack).to respond_to(:playing)
    end

    it "responds to current_payer" do
      expect(@blackjack).to respond_to(:current_player)
    end

    it "responds to deck" do
      expect(@blackjack).to respond_to(:deck)
    end

    it "responds to deal" do
      expect(@blackjack).to respond_to(:deal)
    end

    it "responds to hit" do
      expect(@blackjack).to respond_to(:hit)
    end

    it "responds to stand" do
      expect(@blackjack).to respond_to(:stand)
    end

    it "responds to show_hands" do
      expect(@blackjack).to respond_to(:show_hands)
    end

    it "responds to set_results" do
      expect(@blackjack).to respond_to(:set_results)
    end
  end

  describe "deal cards" do
    before do
      @blackjack.deal
      @dealer_cards = @blackjack.dealer_hand.dealt_cards
      @player_cards = @blackjack.player_hand.dealt_cards
    end

    # We want to deal 2 cards to deaer and two cards to the player

    it "returns 2 cards, both from player and dealer" do
      expect(@dealer_cards.count).to eq(2)
      expect(@player_cards.count).to eq(2)
    end

    # Dealer's first card should be face down

    it "doesn't display dealer's first card" do
      expect(@dealer_cards.first.show).to eq(false)
    end

    it "ends game if player has a blackjack" do
      card_1 = Card.new("Hearts", "9")
      card_2 = Card.new("Hearts", "Jack")
      card_3 = Card.new("Hearts", "4")

      card_4 = Card.new("Hearts", "Ace")
      card_5 = Card.new("Hearts", "10")
      card_6 = Card.new("Hearts", "Queen")

      @blackjack = Blackjack.new(SUITS, RANKS)

      new_deck = [card_5, card_6, card_4, card_1, card_2, card_3]

      @blackjack.deck.replace_with new_deck

      @blackjack.deal

      expect(@blackjack.current_player).to eq('Dealer')
    end

  end

end