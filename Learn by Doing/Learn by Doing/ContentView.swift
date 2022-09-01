//
//  ContentView.swift
//  Learn by Doing
//
//  Created by Yuzu on 9/1/22.
//

import SwiftUI

struct ContentView: View {
    // MARK: - CONTENT
    
    var body: some View {
        CardView()
    }
}

// MARK: -PREVIEW
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 11 Pro")
    }
}
