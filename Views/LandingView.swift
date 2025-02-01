//
//  ContentView.swift
//  ToDoList
//
//  Created by Ahmet Kaan Caliskan on 2025-01-30.
//

import SwiftUI

struct LandingView: View {
    
    //MARK: Stored Properties
    
    //The item currently being added
    @State var newItemDescription: String = ""
    
    //The search text
    @State var searchText = ""
    
    //MARK: Computed properties
    var body: some View {
        
        NavigationView {
            VStack {
                List{
                    
                    ItemView(title: "Study for Chemistry Quiz", done: false)
                    
                    ItemView(title: "Finish computer Science Assignment", done: true)
                    
                    ItemView(title: "Go for a run around campus", done: false)

                }
                .searchable(text: $searchText)
                
                HStack{
                    TextField("Enter a to-do item", text: $newItemDescription)
                    Button("ADD") {
                        // Add the new to-do item
                    }
                }.padding(20)
    
            }
            .navigationTitle("To do")
        }
    }
}

#Preview {
    LandingView()
}

struct ItemView: View {
    
    let title: String
    let done: Bool
    
    var body: some View {
        Label(
            title: {
                Text((title)) },
            icon: {
                if done == true {
                    Image(systemName: "checkmark.circle")
                } else {
                    Image(systemName: "circle")
                }
            })
    }
}
