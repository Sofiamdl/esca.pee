//
//  dispersinhosApp.swift
//  dispersinhos
//
//  Created by sml on 18/10/22.
//

import SwiftUI

@main
struct dispersinhosApp: App {
    var body: some Scene {
        WindowGroup {
            GameView()
                .environmentObject(CollectableManager(milk: false, lostPiece: false, adapter: false, paper: false, coffee: .powder))
        }
    }
}
