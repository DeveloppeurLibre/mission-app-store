//
//  ItemDetailsView.swift
//  MissionAppStore
//
//  Created by Quentin Cornu on 19/12/2023.
//

import SwiftUI

struct ItemDetailsView: View {
    
    let item: String
    
    var body: some View {
        Text(item)
            .navigationTitle(item)
    }
}

#Preview {
    ItemDetailsView(item: "Preview item")
}
