//
//  CreditView.swift
//  Notes WatchKit Extension
//
//  Created by Yuzu on 8/31/22.
//

import SwiftUI

struct CreditView: View {
    
    @State private var randomNumber: Int = Int.random(in: 1..<4)
    
    private var randomImage: String {
        return "developer-no\(randomNumber)"
    }
    
    var body: some View {
        VStack(spacing: 3){
            // PROFILE IMAGE
            Image(randomImage)
                .resizable()
                .scaledToFit()
                .layoutPriority(1)
            
            // HEADER
            HeaderView(title: "Credits")
            
            // CONTENT
            Text("Yuki Suzuki")
                .foregroundColor(.primary)
                .fontWeight(.bold)
            
            Text("Developer")
                .font(.footnote)
                .foregroundColor(.secondary)
                .fontWeight(.light)
        }
    }
}

struct CreditView_Previews: PreviewProvider {
    static var previews: some View {
        CreditView()
    }
}
