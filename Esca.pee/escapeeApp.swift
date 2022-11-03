//
//  dispersinhosApp.swift
//  dispersinhos
//
//  Created by sml on 18/10/22.
//

import SwiftUI

@main
struct escapeeApp: App {
    @ObservedObject var coordinator = Coordinator()
    @ObservedObject var collectableManager = CollectableManager()

    init(){
         UINavigationBar.setAnimationsEnabled(false)
     }
    
    var body: some Scene {
        WindowGroup {
            if #available(iOS 16.0, *) {
                NavigationStack(path: $coordinator.path) {
                    HomeScreenView()
                    .navigationDestination(for: Destination.self) { destination in
                        ViewFactory.viewForDestination(destination)
                    }
                }
                .environmentObject(coordinator)
                .environmentObject(collectableManager)
            } else {
                HomeScreenView()
            }
        }
    }
}
