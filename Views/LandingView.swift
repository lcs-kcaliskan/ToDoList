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
    
    //The list of to-do Items
    @State var todos: [ToDoItem] = exampleItems
    
    
    //MARK: Computed properties
    var body: some View {
        
        NavigationView {
            VStack {
                List(todos) { todo in
                    
                    ItemView(currentItem: todo)

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



