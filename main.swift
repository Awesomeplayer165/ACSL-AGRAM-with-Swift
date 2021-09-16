// The dealer must play a card of the same suit if he can. 

// He plays the lowest card in that suit that is of a higher rank than the card the opponent played.

// If he does not have such a card, he plays his lowest card in that suit.


class Player {
	let cards: [Card]

	init(cards: [Card]) { 
		self.cards = cards 
	}
}

class Card {
	let number: Int
	let suit:   Suits

	init(suit: Suits, number: Int) {
		self.suit = suit
		self.number = number
	}
}

enum Suits {
	case clubs
	case diamonds
	case hearts
	case spades
}

let opponent = Player()