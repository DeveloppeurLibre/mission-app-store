//
//  MissionAppStoreApp.swift
//  MissionAppStore
//
//  Created by Quentin Cornu on 11/12/2023.
//

import SwiftUI

@main
struct MissionAppStoreApp: App {
    var body: some Scene {
        WindowGroup {
            ProfileCell(name: "Nico", followers: 1000, profilePictureURL: URL(string: "https://images.pexels.com/photos/2589653/pexels-photo-2589653.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2")!)
        }
    }
}
