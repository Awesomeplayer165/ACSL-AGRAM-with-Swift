// Helper.swift

import Foundation

func getInput() -> Input {
	print("Enter input: ", terminator: "")
	let input = readLine()!.replacingOccurrences(of: " ", with: "")

	let inputArray = input.components(separatedBy: ",")

	guard inputArray.count == 12 else { fatalError() }

	return Input(opponentCard: findCard(with: inputArray, index: 1), dealerCards: findDealerCards(with: inputArray))
}


// Index should be an odd number that point to the suit ex. (D)
func findCard(with inputArray: [String], index: Int) -> Card {

	let suit: Suits

	switch inputArray[index] {
		case "C": suit = .clubs
		case "D": suit = .diamonds
		case "H": suit = .hearts
		case "S": suit = .spades
		default:  fatalError()
	}

	return Card(suit: suit, number: Int(inputArray[index-1])!)
}

func findDealerCards(with inputArray: [String]) -> [Card] {

	var cards = [Card]()

	for (index, _) in inputArray.enumerated() {
		
		if index > 2 && !index.isMultiple(of: 2) {
			cards.append(findCard(with: inputArray, index: index))
		}
	}

	return cards
}

func findCardDealerWillPlay(with input: Input) -> Card? {
	
	var foundCards = [Card]()

	for dealerCard in input.dealerCards {
		if dealerCard.suit == input.opponentCard.suit && dealerCard.number >= input.opponentCard.number {
			foundCards.append(dealerCard)
		}
	}

	if foundCards.isEmpty {
		for dealerCard in input.dealerCards {
			if dealerCard.suit == input.opponentCard.suit {
				foundCards.append(dealerCard)
			}
		}	
	}

	foundCards.sort(by: <)

	return foundCards.first
}