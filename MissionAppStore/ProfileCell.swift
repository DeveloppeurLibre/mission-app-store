//
//  ProfileCell.swift
//  MissionAppStore
//
//  Created by Quentin Cornu on 13/12/2023.
//

import SwiftUI

struct ProfileCell: View {
    
    let name: String
    let followers: Int
    let profilePictureURL: URL
    
    // TOUJOURS un = APRÈS UN state
    @State var profileIsFavorite = false
    
    var body: some View {
        HStack {
            AsyncImage(url: profilePictureURL) { profilePicture in
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
                Text(name)
                    .bold()
                    .font(.system(size: 20))
                Text("\(followers) abonnés")
            }
            Spacer()
            Button(action: {
                // Action...
            }, label: {
                Text("S'abonner")
                    .foregroundStyle(Color.white)
                    .padding(.horizontal, 8)
                    .padding(.vertical, 4)
                    .background(profileIsFavorite ? Color.purple : Color.blue)
                    .cornerRadius(8)
            })
        }
        .padding()
    }
}

#Preview {
    VStack {
        ProfileCell(
            name: "Quentin",
            followers: 300,
            profilePictureURL: URL(string: "https://images.pexels.com/photos/2589653/pexels-photo-2589653.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2")!
        )
//        ProfileCell(
//            name: "Nico",
//            followers: 984,
//            profilePictureURL: URL(string: "https://images.pexels.com/photos/343717/pexels-photo-343717.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2")!
//        )
//        ProfileCell(
//            name: "Quentin",
//            followers: 98274,
//            profilePictureURL: URL(string: "https://images.pexels.com/photos/3782179/pexels-photo-3782179.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2")!
//        )
    }
}
