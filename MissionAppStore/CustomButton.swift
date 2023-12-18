//
//  CustomButton.swift
//  MissionAppStore
//
//  Created by Quentin Cornu on 13/12/2023.
//

import SwiftUI

struct CustomButton: View {
    
    let title: String
    @State var backgroundColor = Color.red
    
    var body: some View {
        Button(action: {
            backgroundColor = .green
        }, label: {
            Text("Changer la couleur du bouton")
                .foregroundStyle(Color.white)
        })
        .padding(.horizontal, 8)
        .padding(.vertical, 4)
        .background(backgroundColor)
        .cornerRadius(8)
    }
}

#Preview {
    VStack(spacing: 20) {
        CustomButton(title: "S'abonner !")
//        CustomButton(title: "Envoyer un message", color: .yellow, action: {})
//        CustomButton(title: "Signaler !", color: .purple, action: {})
    }
}
