//
//  ContentView.swift
//  Memorize
//
//  Created by Munhee Kim on 2022/02/21.
//

import SwiftUI

struct ContentView: View {
    var aminals = ["🐶", "🐢", "🐼", "🐷", "🦆", "🐥", "🦄", "🐳", "🐘", "🦩", "🦒", "🐸", "🐯", "🐰", "🦁", "🐨", "🦊", "🐹", "🐝", "🐬", "🦭", "🐑", "🐧", "🐺"]
    var vehicles = ["🚗", "🚲", "🚕", "🚑", "🚒", "🚓", "🚚", "🚙", "✈️", "🚂",
                    "🛵", "🛶", "🛴", "🚃", "🚁", "🛳", "🛺", "🚘", "🛸", "🛰",
                    "🚠", "⛴", "🚍", "⛵️"]
    var fruits = ["🍎", "🥑", "🫐", "🍐", "🍌", "🍒", "🥭", "🍓", "🍉", "🍇",
                  "🥥", "🍍", "🍅", "🥝", "🍑"]
    
    @State var emojiCount = 4
    
    
    
    var body: some View {
        VStack {
            HStack {
                Text("Memorize!")
                    .font(Font.largeTitle)
                    .padding()
            }
            ScrollView {
                LazyVGrid(columns: [GridItem(.adaptive(minimum: 65))]) {
                    ForEach(aminals[0..<emojiCount], id: \.self) { aminals in
                        CardView(content: aminals).aspectRatio(2/3, contentMode: .fit)
                    }
                }
            }
            .foregroundColor(.red)
            Spacer()
            HStack {
                vehiclesBtn
                animalsBtn
                fruitsBtn
            }
        }
        .padding(.horizontal)
        
    }
    
    var vehiclesBtn: some View {
        VStack {
            Button {
                
            } label: {
                Image(systemName: "car")
            }
            .font(Font.largeTitle)
            Text("Vehicles")
                .font(Font.caption)
                .foregroundColor(.blue)
        }
        .padding()
    }
    
    var animalsBtn: some View {
        VStack {
            Button {
                
            } label: {
                Image(systemName: "pawprint")
            }
            .font(Font.largeTitle)
            Text("Animals")
                .font(Font.caption)
                .foregroundColor(.blue)
        }
        .padding()
    }
    
    var fruitsBtn: some View {
        VStack {
            Button {
                
            } label: {
                Image(systemName: "applelogo")
            }
            .font(Font.largeTitle)
            Text("Fruits")
                .font(Font.caption)
                .foregroundColor(.blue)
        }
        .padding()
    }
}

struct CardView: View {
    var content: String
    @State var isFaceUp: Bool = false
    
    var body: some View {
        ZStack() {
            let shape = RoundedRectangle(cornerRadius: 20)
            
            if isFaceUp {
                shape.fill().foregroundColor(.white)
                shape.strokeBorder(lineWidth: 3)
                Text(content).font(.largeTitle)
            } else {
                shape.fill()
            }
        }
        .onTapGesture {
            isFaceUp = !isFaceUp
        }
    }
}






struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
//        ContentView()
//            .preferredColorScheme(.dark)
        ContentView()
            .preferredColorScheme(.light)
    }
}
