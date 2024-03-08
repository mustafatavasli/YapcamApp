//
//  YapcamApp.swift
//  Yapcam
//
//  Created by Mustafa TAVASLI on 8.03.2024.
//

import SwiftUI

@main
struct YapcamApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
