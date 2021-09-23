// Input.swift

class Input {
	let opponentCard: Card
	let dealerCards:  [Card]

	init(opponentCard: Card, dealerCards: [Card]) {
		self.opponentCard = opponentCard
		self.dealerCards  = dealerCards
	}
}