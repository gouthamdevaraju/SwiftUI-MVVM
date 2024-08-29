//
//  MVVMExampleApp.swift
//  MVVMExample
//
//  Created by Goutham Devaraju on 29/08/24.
//

import SwiftUI

@main
struct MVVMExampleApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
