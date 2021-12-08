//
//  FormsView.swift
//  CupcakeCorner
//
//  Created by Alexander Rozhdestvenskiy on 07.12.2021.
//

import SwiftUI

struct FormsView: View {
    
    @State private var username = ""
    @State private var email = ""
    
    var disableForm: Bool {
        username.count < 4 || email.count < 4
    }
    
    var body: some View {
        Form {
            Section {
                TextField("Username", text: $username)
                TextField("Email", text: $email)
            }
            
            Section {
                Button("Create account") {
                    print("Creating account...")
                }
            }
            .disabled(disableForm)
        }
    }
}

struct FormsView_Previews: PreviewProvider {
    static var previews: some View {
        FormsView()
    }
}
