//
//  sneakersAppApp.swift
//  sneakersApp
//
//  Created by Thiago on 10/02/24.
//

import SwiftUI

@main
struct sneakersApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            HomeView().environmentObject(HomeViewModel())
        }
    }
}
