//
//  EmojiMemoryGame.swift
//  Assignment_one
//
//  Created by Joe on 2020-07-15.
//  Copyright © 2020 Joe. All rights reserved.
//

import Foundation

class EmojiMemoryGame {
    private var model: MemoryGame<String> = EmojiMemoryGame.createMemoryGame()
    
    static func createMemoryGame() -> MemoryGame<String> {
        let emojis: Array<String> = ["👔", "👕", "🕊","🐃","🐅", "🐠","🐟","🐬","🐳","🐋","🦈","🐊"].shuffled()

        return MemoryGame<String>(numberOfPairsOfCards: Int.random(in: 2..<6)){ pairIndex in
            return emojis[pairIndex]
        }
    }
    
    // MARK: - Access to the Model
    var cards: Array<MemoryGame<String>.Card>{
        return model.cards.shuffled()
    }
    
    // MARK: - Intent(s)
    func choose(card: MemoryGame<String>.Card){
        model.choose(card: card)
    }
    
}
