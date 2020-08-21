require_relative 'blackjack'

SUITS = [ 'Hearts', 'Spades', 'Clubs', 'Diamonds' ]
RANKS = [ '2', '3', '4','5', '6', '7', '8' ,'9', '10', 'Jack', 'Queen', 'King' ,'Ace' ]

@blackjack = Blackjack.new(SUITS, RANKS)

@blackjack.deal

@blackjack.show_hands