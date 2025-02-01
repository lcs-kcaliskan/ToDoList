//
//  ItemView.swift
//  ToDoList
//
//  Created by Ahmet Kaan Caliskan on 2025-01-31.
//

import SwiftUI

struct ItemView: View {
    
    let currentItem: ToDoItem
    
    var body: some View {
        Label(
            title: {
                Text((currentItem.title)) },
            icon: {
                Image(systemName: currentItem.done == true ? "checkmark.circle" : "circle")
            })
    }
}

#Preview {
    List {
        ItemView(currentItem: firstItem)
        ItemView(currentItem: secondItem)
        ItemView(currentItem: thirdItem)
    }
    
}
