//
//  CoreDataProjectApp.swift
//  CoreDataProject
//
//  Created by Alexander Rozhdestvenskiy on 13.12.2021.
//

import SwiftUI

@main
struct CoreDataProjectApp: App {
    
    @StateObject private var dataController = DataController()
    
    var body: some Scene {
        WindowGroup {
            SingerView()
                .environment(\.managedObjectContext, dataController.container.viewContext)
        }
    }
}
