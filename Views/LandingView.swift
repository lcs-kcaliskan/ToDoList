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
                }
                .searchable(text: $searchText)
                
                HStack{
                    
                }.padding(20)
    
            }
            .navigationTitle("To do")
        }
    }
}

#Preview {
    LandingView()
}
