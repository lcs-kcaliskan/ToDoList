//
//  ItemView.swift
//  ToDoList
//
//  Created by Ahmet Kaan Caliskan on 2025-01-31.
//

import SwiftUI

struct ItemView: View {
    
    @Bindable var currentItem: TodoItem
    
    var body: some View {
        Label(
            title: {
                TextField("Enter a to-do item", text: $currentItem.title, axis: .vertical) },
            icon: {
                Image(systemName: currentItem.done == true ? "checkmark.circle" : "circle")
                //Tap the mark as done
                    .onTapGesture {
                        currentItem.done.toggle()
                    }
            })
    }
}

//#Preview {
//    List {
//        ItemView(currentItem: Binding.constant(firstItem))
//        ItemView(currentItem: Binding.constant(secondItem))
//       
//    }
//    
//}
