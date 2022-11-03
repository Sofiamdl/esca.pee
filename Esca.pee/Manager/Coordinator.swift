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
}

class Coordinator: ObservableObject {

    @Published var path: [Destination] = []

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
    
    func LetterZoom () {
        path.append(Destination.letterZoom)
    }
}
