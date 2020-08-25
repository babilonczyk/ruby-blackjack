require_relative 'card'

class Hand

  attr_accessor :dealt_cards

  def initialize
    @dealt_cards = []
  end

  def add_card( card )
    @dealt_cards << card
  end

  def to_s
    res = ''

    @dealt_cards.each do |card|
      res += "#{card.rank} #{card.suit}, "
    end

    res
  end

  def get_cards_value
    res = 0

    @dealt_cards.each do |card|
      if card.rank == 'Jack'
        res += 10
      elsif card.rank == 'Queen'
        res += 10
      elsif card.rank == 'King'
        res += 10
      elsif card.rank == 'Ace'
        res += 1
      else
         res += card.rank.to_i
      end
    end

    res
  end

end