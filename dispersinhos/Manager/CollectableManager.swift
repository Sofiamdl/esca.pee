//
//  CollectableManager.swift
//  dispersinhos
//
//  Created by sml on 25/10/22.
//

import SwiftUI

class CollectableManager: ObservableObject {
    enum Coffee: String {
        case powder
        case full
        case withMilk
        case empty
    }
    
    struct Collectable {
        
        var isClicked: Bool
        var isTaken: Bool
        
    }

    @Published var milk: Collectable = Collectable(isClicked: false, isTaken: false)
    @Published var lostPiece: Collectable = Collectable(isClicked: false, isTaken: false)
    @Published var adapter: Collectable = Collectable(isClicked: false, isTaken: false)
    @Published var paper: Collectable = Collectable(isClicked: false, isTaken: false)
    @Published var coffee: Coffee = .empty

    init () {}
    
    func adapterTrue() {
        self.adapter.isTaken = true
        self.milk.isTaken = true
    }
}
