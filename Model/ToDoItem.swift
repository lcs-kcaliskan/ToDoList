//
//  ToDoItem.swift
//  ToDoList
//
//  Created by Ahmet Kaan Caliskan on 2025-01-31.
//

import SwiftData

@Model
class ToDoItem: Identifiable {
    var title: String
    var done: Bool
    
    init(title: String , done: Bool) {
        self.title = title
        self.done = done
    }
}

extension ToDoItem {
    
    @MainActor
    static var preview: ModelContainer {
        
        let container = try! ModelContainer(
            for: ToDoItem.self,
            configurations: ModelConfiguration(isStoredInMemoryOnly: true)
        )
        
        // Add mock data
        container.mainContext.insert(
            ToDoItem(title: "Go for a walk", done: false)
        )
        container.mainContext.insert(
            ToDoItem(title: "Have a nap", done: true)
        )
        container.mainContext.insert(
            ToDoItem(title: "Call mom", done: false)
        )
 
        return container
    }
}

    
   
    

