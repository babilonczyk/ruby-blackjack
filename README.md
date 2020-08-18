# ruby-blackjack

Blackjack Game made in ruby using RSpec. The main objective was to practice TDD testing using RSpec. 
Probably in the future I will use Rails to build something more advanced. However it isn't my main goal for this project right now.

## Rules

Blackjack is played between the dealer (computer) and the player (you). Deck consists of 52 cards and it needs be shuffled to set up the game.

The deck is face down so the first card to be dealt from the top of the deck (which is face down) is technically the last card in the deck. 
This card usually goes to the player, then the next card goes to the dealer which is face down (ie no one gets to see the card or know its value), 
the next card to the player and the next to the dealer. But this card of the dealer is face up while both the cards of the player is face up 
(value and rank of both cards are showing).So both player and dealer end up with 2 cards. But the player can only see 1 card of 
the dealer that is showing while the other card is face down.

We will change it up a little (because we can) and give the first card to the dealer and the next card to the player and so on. Once the 2 cards each have been dealt, it's the player's turn to act. They can take a card (hit), or they can choose 
to take no more cards (stand) in which case they close out their turn and it's the dealer's turn to act. Player can take more than 1 card 
(can hit multiple times if they chose) before closing out their turn as can the dealer. 

The objective of the game is to get a total value of 21 among the cards dealt (or as close to 21 as possible) WITHOUT going over 21.
If the value of the cards in the hand dealt to the player exceed 21, then the player 'busts' and loses the game. If the value of the dealer's hand exceeds 21
and the player had NOT busted when it was their turn to play,then the dealer 'busts' and the player wins the hand. Getting a blackjack, i.e. 2 cards 
that add up to 21, results in an automatic win for the player (unless the dealer also gets a blackjack in which case there is a tie). 

Jack, Queen, King all carry values of 10. Ace can have value of 1 or 11. All other cards have value that is listed. i.e. 2 has value 2, 3 is worth 3 and so on. 
So a hand consisting of Jack of Diamonds and an 8 of spades carriesa value of 18, a hand consisting of Ace of clubs, 5 of diamonds and 4 of spades (11 + 5 + 4) 
carries a value of 20. So when a player gets any combo of Ace and face card (King, Queen, Jack) or a 10 as their two dealt cards, 
they automatically win and don't have to act anymore in the hand. This is called Blackjack. The dealer has to keep hitting unless the total 
value of their 2 cards is 17 or above. For example if a dealer has 10 of spades and a 6 of hearts for total value of 16. 

They are forced to take a card from the deck. In the same scenario a player may choose to 'stand' and not take anymore cards and end their turn.
