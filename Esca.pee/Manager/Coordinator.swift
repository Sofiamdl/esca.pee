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
    case computer
    case letterZoom
    case notebookZoom
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
    
    func letterZoom () {
        path.append(Destination.letterZoom)
    }
    
    func notebookZoom () {
        path.append(Destination.notebookZoom)
    }
}
