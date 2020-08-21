require_relative 'deck'
require_relative 'hand'

class Blackjack

  attr_reader :player_hand, :dealer_hand, :deck, :playing
  attr_accessor :current_player

  def initialize( suits, ranks )
    @player_hand = nil
    @dealer_hand = nil
    @deck = Deck.new( suits, ranks )
    @deck.shuffle
    @playing = false
    @current_player = ''
  end

  def deal
    if @playing.equal? false
      @player_hand = Hand.new
      @dealer_hand = Hand.new
    end

    2.times do
      dealer_hand.add_card(@deck.deal_card)
      player_hand.add_card(@deck.deal_card)
    end

    dealer_hand.dealt_cards.first.show = false;
    @playing = true

    cards_ten = ['10', 'Jack', 'Queen', 'King']
    player_cards = player_hand.dealt_cards

    if cards_ten.include?( player_cards.first.rank ) && player_cards.last.rank == 'Ace' ||
        player_cards.first.rank == 'Ace' && cards_ten.include?( player_cards.last.rank )
      @current_player = 'Dealer'
    end
  end

  def hit

  end

  def stand

  end

  def show_hands

  end

  def set_results

  end

end