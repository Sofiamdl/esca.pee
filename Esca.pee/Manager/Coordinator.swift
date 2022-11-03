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
    case gameView
    case computer
    case letterZoom
    case cardMugView
}

class Coordinator: ObservableObject {

    @Published var path: [Destination] = []

    func gotoBackOnepage() {
        path.removeLast(1)
    }
    
    func gotoHomePage() {
        path.removeLast(path.count)
    }

    func tilePuzzle() {
        path.append(Destination.tilePuzzle)
    }
    
    func computer() {
        path.append(Destination.computer)
    }

    func lockerPassword() {
        path.append(Destination.lockerPassword)
    }
    
    func goToGameView() {
        path.append(Destination.gameView)
    }
    
    func letterZoom () {
        path.append(Destination.letterZoom)
    }
    
    func cardMugView() {
        path.append(Destination.cardMugView)
    }

}
