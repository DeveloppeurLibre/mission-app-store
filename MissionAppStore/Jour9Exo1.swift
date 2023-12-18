//
//  Jour9Exo1.swift
//  MissionAppStore
//
//  Created by Quentin Cornu on 18/12/2023.
//

import SwiftUI

struct Jour9Exo1: View {
    
    @State var email: String = ""
    @State var password: String = ""
    @State var passwordConfirmation: String = ""
    @State var errorMessage = ""
    
    var body: some View {
        VStack(spacing: 16) {
            TextField("Votre email...", text: $email)
            TextField("Mot de passe", text: $password)
            TextField("Confirmation de mot de passe", text: $passwordConfirmation)
            
            Text(errorMessage)
                .foregroundStyle(.red)
            
            if email != "" && password != "" && passwordConfirmation != "" {
                Button(action: {
                    if password != passwordConfirmation {
                        errorMessage = "Les deux mot de passe ne sont pas identiques"
                    } else {
                        errorMessage = ""
                    }
                }, label: {
                    Text("Confirmer")
                })
            }
        }
        .textFieldStyle(.roundedBorder)
        .padding()
    }
}

#Preview {
    Jour9Exo1()
}
