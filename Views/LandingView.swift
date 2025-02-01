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
    @Query var todos: [ToDoItem]
    
    
    //MARK: Computed properties
    var body: some View {
        
        NavigationView {
            VStack {
                List {
                    ForEach(todos) { todo in
                        
                        ItemView(currentItem: todo)
                 
                    }
                    .onDelete(perform: removeRows)
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
            .onAppear {
                printCommandToOpenDatabaseFile()
            }
            .navigationTitle("To do")
        }
    }
    
    //MARK: Functions
    func createToDo(withTitle title: String) {
        
        // Create the new to-do item instance
        let todo = ToDoItem(title: title, done: false)
        
        // Use the model context to insert the new to-do
        modelContext.insert(todo)
}
    
    func removeRows(at offsets: IndexSet) {
        
        // Accept the offset within the list
        // (the position of the item being deleted)
        //
        // Then ask the model context to delete this
        // for us, from the 'todos' array
        for offset in offsets {
            modelContext.delete(todos[offset])
        }
    }
    
}

//#Preview {
//    LandingView()
//}



