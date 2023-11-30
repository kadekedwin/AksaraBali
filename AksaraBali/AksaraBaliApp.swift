//
//  AksaraBaliApp.swift
//  AksaraBali
//
//  Created by Kadek Edwin on 27/08/23.
//

import SwiftUI

@main
struct AksaraBaliApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            SplashScreenView()
//                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
