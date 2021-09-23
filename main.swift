// main.swift

// The dealer must play a card of the same suit if he can. 

// He plays the lowest card in that suit that is of a higher rank than the card the opponent played.

// If he does not have such a card, he plays his lowest card in that suit.

/* Examples:
Input: 5,D,2,D,6,H,9,D,9,S,6,H - Output: 9,D
Input: 4,C,1,C,6,C,7,H,5,S,4,D - Output: 6,C
*/

let cards = getInput()
// dump(cards)

if let cardToPlay = findCardDealerWillPlay(with: cards) {
	print(cardToPlay.number, terminator: ",")

	switch cardToPlay.suit {
		case .clubs:    print("C")
		case .diamonds: print("D")
		case .hearts:   print("H")
		case .spades:   print("S")
	}
} else {
	print("NONE")
}

// cards dump for example 1

/*
▿ main.Input #0
  ▿ opponentCard: main.Card #1
    - suit: main.Suits.diamonds
    - number: 5
  ▿ dealerCards: 5 elements
    ▿ main.Card #2
      - suit: main.Suits.diamonds
      - number: 2
    ▿ main.Card #3
      - suit: main.Suits.hearts
      - number: 6
    ▿ main.Card #4
      - suit: main.Suits.diamonds
      - number: 9
    ▿ main.Card #5
      - suit: main.Suits.spades
      - number: 9
    ▿ main.Card #6
      - suit: main.Suits.hearts
      - number: 6
*/