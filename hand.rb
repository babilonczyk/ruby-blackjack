class Hand

  attr_accessor :dealt_cards

  def initialize
    @dealt_cards = []
  end

  def add_card( card )
    @dealt_cards << card
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