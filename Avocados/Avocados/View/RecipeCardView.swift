//
//  RecipeCardView.swift
//  Avocados
//
//  Created by Yuzu on 9/12/22.
//

import SwiftUI

struct RecipeCardView: View {
    
    var recipe: Recipe
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            // CARD IMAGE
            Image(recipe.image)
                .resizable()
                .scaledToFit()
                .overlay(
                    HStack {
                        Spacer()
                        VStack {
                            Image(systemName: "bookmark")
                                .font(Font.title.weight(.light))
                                .foregroundColor(Color.white)
                                .imageScale(.small)
                            .shadow(color: Color("ColorBlackTransparentLight"), radius: 2, x: 0, y: 0)
                            .padding(.trailing, 20)
                            .padding(.top, 22)
                            Spacer()
                        }
                    }
                )
            
            VStack(alignment: .leading, spacing: 12){
                Text(recipe.title)
                    .font(.system(.title, design: .serif))
                    .fontWeight(.bold)
                    .foregroundColor(Color("ColorGreenMedium"))
                    .lineLimit(1)
                
                Text(recipe.headline)
                    .font(.system(.title, design: .serif))
                    .foregroundColor(Color.gray)
                    .italic()
                
                HStack(alignment: .center, spacing: 5) {
                    ForEach(1...(recipe.rating), id: \.self) { _ in
                        Image(systemName: "star.fill")
                            .foregroundColor(Color.yellow)
                    }
                }
                
                HStack(alignment: .center, spacing: 12){
                    HStack(alignment: .center, spacing: 2){
                        Image(systemName: "person.2")
                        Text("Serves: \(recipe.serves)")
                    }
                    HStack(alignment: .center, spacing: 2){
                        Image(systemName: "clock")
                        Text("Prep: \(recipe.preparation)")
                    }
                    HStack(alignment: .center, spacing: 2){
                        Image(systemName: "flame")
                        Text("Cooking: \(recipe.cooking)")
                    }
                }
                .font(.footnote)
                .foregroundColor(Color.gray)
            }
            .padding()
            .padding(.bottom, 12)
        }
        .background(Color.white)
        .cornerRadius(12)
        .shadow(color: Color("ColorBlackTransparentLight"), radius: 8, x: 0, y: 0)
    }
}

struct RecipeCardView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeCardView(recipe: recipesData[0])
            .previewLayout(.sizeThatFits)
    }
}
