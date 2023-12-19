//
//  ListView.swift
//  MissionAppStore
//
//  Created by Quentin Cornu on 19/12/2023.
//

import SwiftUI

struct ListView: View {
    
    @State var newItemScreenIsPresented = false
    @State var name = "Quentin"
    
    @State var items = ["Item 1", "Item 2", "Item 3", "Item 4"]
    
    var body: some View {
        NavigationStack {
            VStack {
                List {
                    ForEach(items, id: \.self) { item in
                        NavigationLink {
                            ItemDetailsView(item: item)
                        } label: {
                            Text(item)
                        }
                    }
                }
                Button(action: {
                    newItemScreenIsPresented = true
                }, label: {
                    Text("Ajouter un nouvel item")
                })
                .sheet(isPresented: $newItemScreenIsPresented, content: {
                    NewItemScreen(items: $items)
                })
            }
            .navigationTitle("Mes items")
        }
    }
}

#Preview {
    ListView()
}
