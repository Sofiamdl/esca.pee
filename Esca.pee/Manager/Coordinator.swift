//
//  ZoomViewManager.swift
//  Esca.pee
//
//  Created by sml on 31/10/22.
//

import SwiftUI

enum Destination: String {
    case zoomView
    case secondPage
}

class Coordinator: ObservableObject {

    @Published var path: [Destination] = []

    func gotoHomePage() {
        path.removeLast(path.count)
    }

    func zoomView() {
        path.append(Destination.zoomView)
    }

    func tapOnSecondPage() {
        path.removeLast()
        path.append(Destination.secondPage)

    }
}
