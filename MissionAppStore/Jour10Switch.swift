//
//  Jour10Switch.swift
//  MissionAppStore
//
//  Created by Quentin Cornu on 18/12/2023.
//

import SwiftUI

struct Jour10Switch: View {
    
    @State var isOn: Bool = false
    
    var body: some View {
        Button(action: {
            isOn.toggle()
        }, label: {
            ZStack(alignment: isOn ? .trailing : .leading) {
                Rectangle()
                    .frame(width: 50, height: 40)
                    .foregroundColor(isOn ? .green : .red)
                    .cornerRadius(8)
                    .shadow(radius: 8)
                    .padding(5)
                Rectangle()
                    .frame(width: 100, height: 50)
                    .cornerRadius(8)
                    .foregroundColor(.gray.opacity(0.2))
            }
            .clipped()
        })
    }
}

#Preview {
    Jour10Switch()
}
