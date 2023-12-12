//
//  ContentView.swift
//  MissionAppStore
//
//  Created by Quentin Cornu on 11/12/2023.
//

import SwiftUI

struct ContentView: View {
    
    // Toute notre UI (user interface) doit absolument être dans le body
    
    var body: some View {
        HStack {
            Circle()
                .frame(width: 80)
                .foregroundStyle(Color.gray)
            VStack(alignment: .leading) {
                Text("Quentin")
                    .bold()
                    .font(.system(size: 20))
                Text("245 abonnés")
            }
            Spacer()
            Text("S'abonner")
                .foregroundStyle(Color.blue)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
