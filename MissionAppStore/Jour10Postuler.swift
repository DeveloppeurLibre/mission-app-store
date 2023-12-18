//
//  Jour10Postuler.swift
//  MissionAppStore
//
//  Created by Quentin Cornu on 18/12/2023.
//

import SwiftUI

struct Jour10Postuler: View {

    @State var isConfirmed = false
    
    var body: some View {
        Button(action: {
            isConfirmed = true
        }, label: {
            HStack {
                Text(isConfirmed ? "Candidature envoyée" : "Postuler")
                    .bold()
                Image(systemName: isConfirmed ? "checkmark.circle" : "paperplane")
            }
            .foregroundStyle(.white)
            .padding(.vertical, 8)
            .padding(.horizontal, 16)
            .background(isConfirmed ? .green : .blue)
            .cornerRadius(8)
            
        })
    }
}

#Preview {
    Jour10Postuler()
}
