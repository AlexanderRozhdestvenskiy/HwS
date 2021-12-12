//
//  RandomNameApp.swift
//  RandomName
//
//  Created by Alexander Rozhdestvenskiy on 12.12.2021.
//

import SwiftUI

@main
struct RandomNameApp: App {
    
    @StateObject private var dataController = DataController()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, dataController.container.viewContext)
        }
    }
}
