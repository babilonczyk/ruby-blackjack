require_relative 'card'

card = Card.new("Clubs", "King")
puts "Card is #{card}"
puts "Card is rank: #{card.rank} suit: #{card.suit}"

card.show = false
puts "Card is #{card}"

card.show = true
puts "Card is #{card}"
