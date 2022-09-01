//
//  ContentView.swift
//  Learn by Doing
//
//  Created by Yuzu on 9/1/22.
//

import SwiftUI

struct ContentView: View {
    // MARK: -PROPERTIES
    var cards: [Card] = cardData
    
    // MARK: - CONTENT
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(alignment: .center, spacing: 20) {
                ForEach(cards) { item in
                    // CardView()
                    CardView(card: item)
                }
            }
            .padding(20)
        }
    }
}

// MARK: -PREVIEW
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(cards: cardData)
            .previewDevice("iPhone 11 Pro")
    }
}
