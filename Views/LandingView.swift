//
//  ContentView.swift
//  ToDoList
//
//  Created by Ahmet Kaan Caliskan on 2025-01-30.
//
import SwiftData
import SwiftUI

struct LandingView: View {
    
    //MARK: Stored Properties
    
    //The item currently being added
    @State var newItemDescription: String = ""
    
    //The search text
    @State var searchText = ""
    
    //Acces the model context (required to do additions, deletions, updates, et cetera)
    @Environment(\.modelContext) var modelContext
    
    //The list of to-do Items
    @State var todos: [ToDoItem] = exampleItems
    
    
    //MARK: Computed properties
    var body: some View {
        
        NavigationView {
            VStack {
                List($todos) { $todo in
                    
                    ItemView(currentItem: $todo)
                    // Delete a to-do item
                        .swipeActions {
                            Button(
                                "Delete",
                                role: .destructive,
                                action: {
                                    delete(todo)
                                }
                            )
                            
                        }
                   

                }
                .searchable(text: $searchText)
                
                HStack{
                    TextField("Enter a to-do item", text: $newItemDescription)
                    Button("ADD") {
                        // Add the new to-do item
                        createToDo(withTitle: newItemDescription)
                    }
                    .font(.caption)
                    .disabled(newItemDescription.isEmpty == true)
                    
                }.padding(20)
    
            }
            .navigationTitle("To do")
        }
    }
    
    //MARK: Functions
    func createToDo(withTitle title: String) {
        
        // Create the new to-do item instance
        let todo = ToDoItem(title: title, done: false)
        
        //Append to the array
        todos.append(todo)
}
    
    func delete(_ todo: ToDoItem) {
        
        //Remove the provided to-do item from the array
        todos.removeAll { currentItem in currentItem.id == todo.id
        }
    }
    
}

//#Preview {
//    LandingView()
//}



