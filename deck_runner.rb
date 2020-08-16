require_relative 'deck'

SUITS = [ 'Hearts', 'Spades', 'Clubs', 'Diamonds' ]
RANKS = [ '1', '2', '3', '4','5', '6', '7', '8' ,'9', 'Jack', 'Queen', 'King' ,'Ace' ]


deck1 = Deck.new(SUITS, RANKS)
puts deck1
puts deck1.shuffle

puts

card = deck1.deal_card
puts card
puts card.rank
puts card.suit

puts

deck2 = []
deck2 << Card.new('Hearts', '2')
deck2 << Card.new('Hearts', '3')
puts 'deck 2:'
puts deck2.shuffle
puts
puts 'deck 1 after replace:'
deck1.replace_with(deck2)
puts deck2.shuffle