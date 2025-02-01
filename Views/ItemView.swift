//
//  ItemView.swift
//  ToDoList
//
//  Created by Ahmet Kaan Caliskan on 2025-01-31.
//

import SwiftUI

struct ItemView: View {
    
    @Binding var currentItem: TodoItem
    
    var body: some View {
        Label(
            title: {
                Text((currentItem.title)) },
            icon: {
                Image(systemName: currentItem.done == true ? "checkmark.circle" : "circle")
                //Tap the mark as done
                    .onTapGesture {
                        currentItem.done.toggle()
                    }
            })
    }
}

#Preview {
    List {
        ItemView(currentItem: Binding.constant(firstItem))
        ItemView(currentItem: Binding.constant(secondItem))
       
    }
    
}
