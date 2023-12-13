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
            AsyncImage(url: URL(string: "https://images.pexels.com/photos/2589653/pexels-photo-2589653.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2")) { profilePicture in
                profilePicture
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .clipShape(Circle())
            } placeholder: {
                Circle()
                    .foregroundStyle(Color.gray)
            }
            .frame(width: 80, height: 80)

            VStack(alignment: .leading) {
                Text("Quentin")
                    .bold()
                    .font(.system(size: 20))
                Text("245 abonnés")
            }
            Spacer()
            Button(action: {
                // Action...
            }, label: {
                Text("S'abonner")
                    .foregroundStyle(Color.white)
                    .padding(.horizontal, 8)
                    .padding(.vertical, 4)
                    .background(Color.blue)
                    .cornerRadius(8)
            })
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
