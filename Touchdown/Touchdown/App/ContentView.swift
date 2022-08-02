//
//  ContentView.swift
//  Touchdown
//
//  Created by Yuzu on 8/2/22.
//

import SwiftUI

struct ContentView: View {
    // MARK: - PROPERTIES
    // MARK: - BODY
    
    var body: some View {
        FooterView()
            .padding(.horizontal)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 12 Pro")
    }
}
