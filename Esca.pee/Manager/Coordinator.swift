//
//  ZoomViewManager.swift
//  Esca.pee
//
//  Created by sml on 31/10/22.
//

import SwiftUI

enum Destination: String {
    case tilePuzzle
    case lockerPassword
    case letterZoom
}

class Coordinator: ObservableObject {

    @Published var path: [Destination] = []

    func gotoHomePage() {
        path.removeLast(path.count)
    }

    func tilePuzzle() {
        path.append(Destination.tilePuzzle)
    }

    func lockerPassword() {
        path.append(Destination.lockerPassword)
    }
    
    func cardZoom () {
        path.append(Destination.letterZoom)
    }
}
