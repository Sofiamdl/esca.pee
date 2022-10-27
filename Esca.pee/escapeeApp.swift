//
//  dispersinhosApp.swift
//  dispersinhos
//
//  Created by sml on 18/10/22.
//

import SwiftUI

@main
struct escapeeApp: App {
    var body: some Scene {
        WindowGroup {
            GameView()
                .environmentObject(CollectableManager())
        }
    }
}
