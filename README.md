# ACSL-AGRAM for Swift

[ACSL-AGRAM](https://github.com/Awesomeplayer165/ACSL-AGRAM/blob/2cae2e2ee6b37d5227dcd8bcfef664ca5a2f7989/AGRAM_1_jr.pdf) is a card game for 2 players, using the cards from a 36-card pack. The cards are numbered from 1 to 9 and are in the suits Clubs, Diamonds, Hearts and Spades.

> Written in `Swift` as practice for the ACSL competition. In the future, programs will be written in `Python` AND `Swift`

## Problem:

The dealer deals five cards to each player. The opponent player leads any card, playing it face up in the middle of the playing area. How can you find the card the dealer must play according to the strategy listed below

## Strategy:
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
