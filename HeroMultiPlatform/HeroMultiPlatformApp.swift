//
//  HeroMultiPlatformApp.swift
//  HeroMultiPlatform
//
//  Created by IsaDevs on 15/3/23.
//

import SwiftUI

@main
struct HeroMultiPlatformApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
