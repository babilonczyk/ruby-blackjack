require_relative 'card'

class Deck
  attr_accessor :deck, :suits, :ranks

  SUITS = [ 'Hearts', 'Spades', 'Clubs', 'Diamonds' ]
  RANKS = [ '2', '3', '4','5', '6', '7', '8' ,'9', '10', 'Jack', 'Queen', 'King' ,'Ace' ]

  def initialize(suits, ranks)
    @deck = []
    @suits = suits
    @ranks = ranks
    create_deck
  end

  def create_deck
    @suits.each do |suit|
      ranks.each do | rank|
        deck << Card.new(suit, rank)
      end
    end
  end

  def shuffle
    @deck.shuffle!
  end

  def deal_card
    @deck.pop
  end

  def replace_with new_deck
    @suits = []
    @rank = []
    @deck = new_deck

    new_deck.each do |card|
      add_suit( card )
      add_rank( card )
    end
  end

  def add_suit( card )
    suit = card.suit
    @suits << suit unless @suits.include? suit
  end

  def add_rank( card )
    rank = card.rank
    @ranks << rank unless ranks.include? rank
  end
end