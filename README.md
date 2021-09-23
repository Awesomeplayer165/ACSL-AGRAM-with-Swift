# ACSL-AGRAM

## PROBLEM:

ACSL Agram is a card game for 2 players, using the cards from a 36-card pack. The cards are numbered from 1 to 9 and are in the suits Clubs, Diamonds, Hearts and Spades.

The dealer deals five cards to each player. The opponent player leads any card, playing it face up in the middle of the playing area.

For this program the following strategy will be used to determine which card the dealer will play:
- The dealer must play a card of the same suit if he can.
- He plays the lowest card in that suit that is of a higher rank than the card the opponent played.
- If he does not have such a card, he plays his lowest card in that suit. 

> No other cases will be tested in this program

## Input:

There will be 5 lines of input. Each line will contain the opponent’s lead card and the 5 cards held by the dealer. All cards will be represented by two characters in value-suit order.
Example: The eight of hearts is represented by 8, H.

## Output:
For each input line print the card the dealer must play according to the strategy listed above. If no card can be played print NONE.

## Created and Maintained by:

[Jacob Trentini](https://github.com/Awesomeplayer165)
