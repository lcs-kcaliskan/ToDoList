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

let firstItem = ToDoItem(title: "Study for Chemistry quiz", done: false)

let secondItem = ToDoItem(title: "Finish computer science assignment", done: false)

let thirdItem =  ToDoItem(title: "Go for a run around campus", done: false)
    
let exampleItems = [
    firstItem
    ,
    secondItem
    ,
    thirdItem
]

    
   
    

