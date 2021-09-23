// Card.swift

class Card {
	let suit:   Suits
	let number: Int

	init(suit: Suits, number: Int) {
		self.suit   = suit
		self.number = number
	}

	static func < (lhs: Card, rhs: Card) -> Bool {
		return lhs.number < rhs.number
	}
}