//
//  sneakersAppApp.swift
//  sneakersApp
//
//  Created by Thiago on 10/02/24.
//

import SwiftUI

@main
struct sneakersAppApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
