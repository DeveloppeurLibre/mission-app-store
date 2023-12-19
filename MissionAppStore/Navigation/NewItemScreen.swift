//
//  NewItemScreen.swift
//  MissionAppStore
//
//  Created by Quentin Cornu on 19/12/2023.
//

import SwiftUI

struct NewItemScreen: View {
    
    @Binding var items: [String]
        
    @State var newItemName = ""
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        VStack(spacing: 40) {
            Text("Entrez un nouvel élément")
            TextField("Entrez le nom de l'élément", text: $newItemName)
                .textFieldStyle(.roundedBorder)
            Button(action: {
                items.append(newItemName)
                dismiss()
            }, label: {
                Text("Confirmer")
            })
        }
        .padding()
    }
}

#Preview {
    NewItemScreen(items: .constant([]))
}
