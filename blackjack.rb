require_relative 'deck'
require_relative 'hand'

class Blackjack

  attr_reader :player_hand, :dealer_hand, :deck, :playing
  attr_accessor :current_player, :outcome

  def initialize( suits, ranks )
    @player_hand = nil
    @dealer_hand = nil
    @deck = Deck.new( suits, ranks )
    @deck.shuffle
    @playing = false
    @current_player = 'Player'
    @outcome = ""
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
    if @playing
      if current_player == "Player"
        add_new_card(player_hand)
      elsif  current_player == "Dealer"
        add_new_card(dealer_hand)
      end
    end
  end

  def stand
    if @playing
      if current_player == "Player"
        @current_player = "Dealer"
        dealer_hand.dealt_cards.first.show = true
      end

      unless dealer_hand.get_cards_value >= 17
        hit
      end
    end
  end

  def show_hands
     "Player's hand: #{player_hand.to_s}\nTotal value: #{player_hand.get_cards_value}\nDealer's hand: #{dealer_hand.to_s}\nTotal value: #{dealer_hand.get_cards_value}"
  end

  def set_results
      if player_hand.get_cards_value > 21 && dealer_hand.get_cards_value < 21
        @outcome = "Player lost"
      elsif dealer_hand.get_cards_value > 21 && player_hand.get_cards_value < 21
        @outcome = "Dealer lost"
      elsif current_player == "Dealer"
        if dealer_hand.get_cards_value == player_hand.get_cards_value
          @outcome = "It is a tie"
        elsif player_hand.get_cards_value > dealer_hand.get_cards_value
          @outcome = "Player won"
        elsif dealer_hand.get_cards_value > player_hand.get_cards_value
          @outcome = "Dealer won"
        end
      end
  end

=begin
  def to_s
    puts "\n[PLAYER]"
    puts "Dealt cards: #{player_hand.dealt_cards.count}"
    puts "Player hand: #{player_hand.get_cards_value}\n\n"

    puts "[DEALER]"
    puts "Dealt cards: #{dealer_hand.dealt_cards.count}"
    puts "Dealer hand: #{dealer_hand.get_cards_value} \n\n"
  end
=end

  private

  def add_new_card( hand )
    hand.add_card(@deck.deal_card)

    if hand.get_cards_value > 21
      @outcome = "#{current_player} lost"
      @playing = false
    end
  end

end