require_relative 'blackjack'

SUITS = [ 'Hearts', 'Spades', 'Clubs', 'Diamonds' ]
RANKS = [ '2', '3', '4','5', '6', '7', '8' ,'9', '10', 'Jack', 'Queen', 'King' ,'Ace' ]

blackjack = Blackjack.new(SUITS, RANKS)

blackjack.deal
puts blackjack.show_hands

while blackjack.player_hand.get_cards_value <= 21
  puts
  player_cards = blackjack.player_hand.dealt_cards

  unless player_cards.first.rank == '10' && player_cards.last.rank == 'Ace' || player_cards.first.rank == 'Ace' && player_cards.last.rank == '10'
    puts " Do you want to hit [H] or stand [S]?"
    response = $stdin.gets.chomp

    if response == "S"
      puts "Player chose to stand"
      blackjack.stand
      puts blackjack.show_hands
      puts
      break
    elsif response == "H"
      puts "Player chose to hit"
      blackjack.hit
      puts blackjack.show_hands
      puts
    end
  else
    blackjack.stand
    puts blackjack.show_hands
    puts
  end

end

puts blackjack.set_results