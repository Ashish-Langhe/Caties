//
//  CatiesApp.swift
//  Shared
//
//  Created by user208584 on 12/14/21.
//

import SwiftUI

@main
struct CatiesApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
