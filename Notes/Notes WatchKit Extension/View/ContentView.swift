//
//  ContentView.swift
//  Notes WatchKit Extension
//
//  Created by Yuzu on 8/24/22.
//

import SwiftUI

struct ContentView: View {
    
    // MARK: -PROPERTY
    @State private var notes: [Note] = [Note]()
    @State private var text: String = ""
    
    // MARK: -Function
    func save(){
        
        dump(notes) // dump to the console.
    }
    
    // MARK: -BODY
    
    var body: some View {
        VStack {
            HStack(alignment: .center, spacing: 6) {
                TextField("Add New Note", text: $text)
                
                Button(action: {
                    // 1. Only run the button's action when the text field is not empty
                    guard text.isEmpty == false else { return }
                    // 2. Create a new note item and initialize it with the text value
                    let note = Note(id: UUID(), text: text)
                    // 3. Add the new note item to the notes array (append)
                    notes.append(note)
                    // 4. Make text filed empty
                    text = ""
                    // 5. Save the notes (function)
                    save()
                }, label: {
                    Image(systemName: "plus.circle")
                        .font(.system(size: 42, weight: .semibold))
                })
                .fixedSize()
                .buttonStyle(PlainButtonStyle())
                .foregroundColor(.accentColor)
                //.buttonStyle(BorderedButtonStyle(tint: .accentColor))
            }
            Spacer()
            
            Text("\(notes.count)")
        }
        .navigationTitle("Notes")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
