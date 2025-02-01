//
//  ToDoListApp.swift
//  ToDoList
//
//  Created by Ahmet Kaan Caliskan on 2025-01-30.
//

import SwiftData
import SwiftUI

@main
struct ToDoListApp: App {
    var body: some Scene {
        WindowGroup {
            LandingView()
                .modelContainer(for: ToDoItem.self)
        }
    }
}
