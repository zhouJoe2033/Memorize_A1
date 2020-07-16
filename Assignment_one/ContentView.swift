//
//  ContentView.swift
//  Assignment_one
//
//  Created by Joe on 2020-07-15.
//  Copyright © 2020 Joe. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var viewModel: EmojiMemoryGame

    var body: some View {
        HStack {
            ForEach(viewModel.cards) { card in
                CardView(card: card).onTapGesture {
                    self.viewModel.choose(card: card)
                }
            }
        }
            .padding()
            .foregroundColor(Color.orange)
            .font(viewModel.cards.count >= 10 ? Font.callout : Font.largeTitle)
    }
}

struct CardView: View {
    var card: MemoryGame<String>.Card
    let screenSize: CGRect = UIScreen.main.bounds
    
    var body: some View {
        ZStack{
            if card.isFaceUp {
                RoundedRectangle(cornerRadius: 10.0).fill(Color.white)
                RoundedRectangle(cornerRadius: 10.0).stroke(lineWidth: 3)
                Text(card.content)
            }else{
                RoundedRectangle(cornerRadius: 10.0).fill()
            }
        }
            //.scaledToFit()
            //.frame(width:50, height:75)
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(viewModel: EmojiMemoryGame())
    }
}

