//
//  ListView.swift
//  MissionAppStore
//
//  Created by Quentin Cornu on 19/12/2023.
//

import SwiftUI

struct ListView: View {
    
    let cars = [
        Car(model: "Porsche 911", color: .blue),
        Car(model: "Clio 3", color: .gray)
    ]
    
    var body: some View {
        List {
            ForEach(cars) { car in
                HStack {
                    VStack(alignment: .leading) {
                        Text(car.model)
                            .font(.headline)
                        Text(car.id.uuidString)
                            .font(.footnote)
                            .foregroundStyle(.gray)
                    }
                    Spacer()
                    Circle()
                        .frame(width: 30)
                        .foregroundStyle(car.color)
                }
            }
        }
    }
}

#Preview {
    ListView()
}
