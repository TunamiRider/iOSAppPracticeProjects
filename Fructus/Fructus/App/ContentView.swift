//
//  ContentView.swift
//  Fructus
//
//  Created by Yuzu on 7/25/22.
//

import SwiftUI

struct ContentView: View {
    // MARK: - PROPRTIES
    
    @State private var isShowingSettings: Bool = false
    
    var fruits: [Fruit] = fruitData
    
    // MARK - BODY
    
    var body: some View {
        NavigationView {
            List {
                ForEach(fruits.shuffled()) {item in
                    NavigationLink(destination: FruitDetailView(fruit: item)){
                        FruitRowView(fruit: item)
                            .padding(.vertical, 4)
                    }
                }
            }
            .navigationTitle("Fruits")
            .navigationBarItems(
                trailing:
                    Button(action: {
                        isShowingSettings = true
                    }) {
                        Image(systemName: "slider.horizontal.3")
                    } //: BUTTON
                    .sheet(isPresented: $isShowingSettings) {
                        SettingsView()
                    }
            )
        } //: NAVIGATIONVIEW
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(fruits: fruitData)
            .previewDevice("iPhone 11 Pro")
    }
}
