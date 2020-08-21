require_relative 'card'
require_relative 'hand'

card_1 = Card.new('Hearts', '2')
card_2 = Card.new('Hearts', 'Jack')
card_3 = Card.new('Hearts', 'Ace')

hand = Hand.new

hand.add_card( card_1 )
hand.add_card( card_2 )
hand.add_card( card_3 )

puts hand.get_cards_value
puts hand.dealt_cards