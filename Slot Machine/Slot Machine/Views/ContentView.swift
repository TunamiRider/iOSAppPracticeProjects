//
//  ContentView.swift
//  Slot Machine
//
//  Created by Yuzu on 9/14/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            // MARK: - BACKGROUND
            
            LinearGradient(gradient: Gradient(colors: [Color("ColorPink"), Color("ColorPurple")]), startPoint: .top, endPoint: .bottom).edgesIgnoringSafeArea(.all)
            
            // MARK: - INTERFACE
            
            VStack(alignment: .center, spacing: 5) {
                // MARK: - HEADER
                
                LogoView()
                
                Spacer()
                
                // MARK: - SCORE
                
                HStack {
                  HStack {
                    Text("Your\nCoins".uppercased())
                      .scoreLabelStyle()
                      .multilineTextAlignment(.trailing)
                    
                    Text("100")
                      .scoreNumberStyle()
                      .modifier(ScoreNumberModifier())
                  }
                  .modifier(ScoreContainerModifier())
                  
                  Spacer()
                  
                  HStack {
                    Text("200")
                      .scoreNumberStyle()
                      .modifier(ScoreNumberModifier())
                    
                    Text("High\nScore".uppercased())
                      .scoreLabelStyle()
                      .multilineTextAlignment(.leading)
                    
                  }
                  .modifier(ScoreContainerModifier())
                }
                
                // MARK: - SLOT MACHINE
                VStack(alignment: .center, spacing: 0) {
                    // MARK: - REEL #1
                    ZStack {
                      ReelView()
                            .modifier(ImageModifier())
                    }
                    HStack(alignment: .center, spacing: 0) {
                      // MARK: - REEL #2
                      ZStack {
                        ReelView()
                      }
                      
                      Spacer()
                      
                      // MARK: - REEL #3
                      ZStack {
                        ReelView()
                      }
                    }
                    .frame(maxWidth: 500)
                    
                    // MARK: - SPIN BUTTON
                    Button(action: {
                    }) {
                      Image("gfx-spin")
                        .resizable()
                        .modifier(ImageModifier())
                    }
                } // Slot Machine
                 .layoutPriority(2)

            }
            // MARK: - BUTTONS
            .overlay(
              // RESET
              Button(action: {
                
              }) {
                Image(systemName: "arrow.2.circlepath.circle")
                  .foregroundColor(.white)
              }
              .modifier(ButtonModifier()),
              alignment: .topLeading
            )
            .overlay(
              // INFO
              Button(action: {
                
              }) {
                Image(systemName: "info.circle")
                  .foregroundColor(.white)
              }
              .modifier(ButtonModifier()),
              alignment: .topTrailing
            )
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
