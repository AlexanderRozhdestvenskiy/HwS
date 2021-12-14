//
//  ContentView.swift
//  CoreDataProject
//
//  Created by Alexander Rozhdestvenskiy on 13.12.2021.
//

import SwiftUI

struct ContentView: View {
    
    @Environment(\.managedObjectContext) var moc
    
    @FetchRequest(sortDescriptors: []) var countries: FetchedResults<Country>
    
    var body: some View {
        VStack {
            List {
                ForEach(countries, id: \.self) { country in
                    Section(country.wrappedFullName) {
                        ForEach(country.candyArray, id: \.self) { candy in
                            Text(candy.wrappedName)
                        }
                    }
                }
            }
            
            Button("Add Examples") {
                let candyOne = Candy(context: moc)
                candyOne.name = "Mars"
                candyOne.origin = Country(context: moc)
                candyOne.origin?.shortName = "UK"
                candyOne.origin?.fullName = "United Kingdom"
                
                let candyTwo = Candy(context: moc)
                candyTwo.name = "KitKat"
                candyTwo.origin = Country(context: moc)
                candyTwo.origin?.shortName = "UK"
                candyTwo.origin?.fullName = "United Kingdom"
                
                let candyThree = Candy(context: moc)
                candyThree.name = "Twix"
                candyThree.origin = Country(context: moc)
                candyThree.origin?.shortName = "UK"
                candyThree.origin?.fullName = "United Kingdom"
                
                let candyFour = Candy(context: moc)
                candyFour.name = "Toblerone"
                candyFour.origin = Country(context: moc)
                candyFour.origin?.shortName = "CH"
                candyFour.origin?.fullName = "Switzerland"
                
                try? moc.save()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
