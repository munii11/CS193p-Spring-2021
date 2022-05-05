//
//  MemorizeApp.swift
//  Memorize
//
//  Created by Munhee Kim on 2022/02/21.
//

import SwiftUI

@main
struct MemorizeApp: App {
    let game = EmojiMemoryGame()
    
    var body: some Scene {
        WindowGroup {
            ContentView(viewModel: game)
        }
    }
}
