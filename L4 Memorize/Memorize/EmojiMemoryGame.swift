//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Munhee Kim on 2022/04/24.
//

/** ViewModel */

import SwiftUI

class EmojiMemoryGame: ObservableObject {
    static let emojis = ["🐶", "🐢", "🐼", "🐷", "🦆", "🐥", "🦄", "🐳", "🐘", "🦩", "🦒", "🐸", "🐯", "🐰", "🦁", "🐨", "🦊", "🐹", "🐝", "🐬", "🦭", "🐑", "🐧", "🐺"]
    
    
    static func createMemoryGame() -> MemoryGame<String> {
        MemoryGame<String>(numberOfPairsOfCards: 3) { pairIndex in
            emojis[pairIndex]
        }
    }
    @Published private var model: MemoryGame<String> = createMemoryGame()
        
    
    var cards: Array<MemoryGame<String>.Card> {
        model.cards
    }
    
    //MARK: - Intent(s)
    func choose(_ card: MemoryGame<String>.Card) {
        model.choose(card)
    }
}
