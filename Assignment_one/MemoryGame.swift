//
//  MemoryGame.swift
//  Assignment_one
//
//  Created by Joe on 2020-07-15.
//  Copyright © 2020 Joe. All rights reserved.
//

import Foundation

struct MemoryGame<Cardcontent> {
    var cards: Array<Card>
    
    func choose(card: Card) {
        print("card choosen: \(card)")
    }
    
    init(numberOfPairsOfCards: Int, cardContentFactory: (Int) -> Cardcontent) {
        cards = Array<Card>()
        
        for pairIndex in 0..<numberOfPairsOfCards {
            let content = cardContentFactory(pairIndex)
            cards.append(Card(content: content, id: pairIndex*2))
            cards.append(Card(content: content, id: pairIndex*2+1))
        }
    }
    
    struct Card: Identifiable {
        var isFaceUp: Bool = true
        var isMatched: Bool = true
        var content: Cardcontent
        var id: Int
    }
}
