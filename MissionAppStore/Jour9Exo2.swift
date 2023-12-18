//
//  Jour9Exo2.swift
//  MissionAppStore
//
//  Created by Quentin Cornu on 18/12/2023.
//

import SwiftUI

struct Jour9Exo2: View {
    
    @State var items: [String] = []
    @State var newItem = ""
    
    var body: some View {
        VStack {
            
            if items.isEmpty {
                Text("Aucun item")
                    .frame(maxHeight: .infinity)
            } else {
                List {
                    ForEach(items, id: \.self) { item in
                        Text(item)
                    }
                }
            }

            HStack {
                TextField("Entrez un item", text: $newItem)
                    .textFieldStyle(.roundedBorder)
                Button(action: {
                    items.append(newItem)
                    newItem = ""
                }, label: {
                    Text("Ajouter")
                })
            }
            .padding()
        }
    }
}

#Preview {
    Jour9Exo2()
}
