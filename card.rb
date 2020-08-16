class Card

  attr_accessor :suit, :rank, :show

  SUITS = [ 'Hearts', 'Spades', 'Clubs', 'Diamonds' ]
  RANKS = [ '2', '3', '4','5', '6', '7', '8' ,'9', '10', 'Jack', 'Queen', 'King' ,'Ace' ]

  def initialize( suit, rank )
    @show = true
    if SUITS.include? suit and RANKS.include? rank
      @suit = suit
      @rank = rank
    else
      @suit = "Unknown"
      @rank = "Unknown"
    end
  end

  def to_s
    if show.equal? true
    "rank: #{rank} suit: #{suit}"
    else
      ""
    end
  end

end