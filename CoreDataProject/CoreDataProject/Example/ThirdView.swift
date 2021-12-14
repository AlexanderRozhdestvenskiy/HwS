//
//  WizardView.swift
//  CoreDataProject
//
//  Created by Alexander Rozhdestvenskiy on 13.12.2021.
//

import SwiftUI

struct ThirdView: View {
    
    @Environment(\.managedObjectContext) var moc
    
    @FetchRequest(sortDescriptors: []) var wizards: FetchedResults<Wizard>
    
    var body: some View {
        VStack {
            List(wizards, id: \.self) { wizard in
                Text(wizard.name ?? "Unknown")
            }
            
            Button("Add") {
                let wizard = Wizard(context: moc)
                wizard.name = "Fury"
            }
            
            Button("Save") {
                do {
                    try moc.save()
                } catch {
                    print(error.localizedDescription)
                }
            }
        }
    }
}

struct WizardView_Previews: PreviewProvider {
    static var previews: some View {
        ThirdView()
    }
}
