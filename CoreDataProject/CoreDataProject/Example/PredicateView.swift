//
//  PredicateView.swift
//  CoreDataProject
//
//  Created by Alexander Rozhdestvenskiy on 13.12.2021.
//

import SwiftUI


struct PredicateView: View {
    
    @Environment(\.managedObjectContext) var moc
    
    @FetchRequest(sortDescriptors: [],
                  predicate: NSPredicate(format: "universe == %@", "Star Wars")) var ships: FetchedResults<Ship>
    
    var body: some View {
        VStack {
            List(ships, id: \.self) { ship in
                Text(ship.name ?? "Unknown name")
            }
            
            Button("Add") {
                let shipOne = Ship(context: moc)
                shipOne.name = "Enterprise"
                shipOne.universe = "Star Trek"
                
                let shipTwo = Ship(context: moc)
                shipTwo.name = "Defiant"
                shipTwo.universe = "Star Trek"
                
                let shipThree = Ship(context: moc)
                shipThree.name = "Falcon"
                shipThree.universe = "Star Wars"
                
                let shipFour = Ship(context: moc)
                shipFour.name = "Executor"
                shipFour.universe = "Star Wars"
                
                try? moc.save()
            }
        }
    }
}

struct PredicateView_Previews: PreviewProvider {
    static var previews: some View {
        PredicateView()
    }
}
