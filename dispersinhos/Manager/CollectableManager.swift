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
        var image: String
        
    }

    @Published var milk: Collectable = Collectable(isClicked: false, isTaken: false, image: ImageConstants.shared.COFFEEMUG)
    @Published var lostPiece: Collectable = Collectable(isClicked: false, isTaken: false, image: ImageConstants.shared.TEST_IMAGE)
    @Published var itemArray: [Collectable] = []
    @Published var adapter: Collectable = Collectable(isClicked: false, isTaken: false, image: ImageConstants.shared.COFFEEMUG)
    @Published var paper: Collectable = Collectable(isClicked: false, isTaken: false, image: ImageConstants.shared.COFFEEMUG)
    @Published var coffee: Coffee = .empty

    init () {}
    
    func adapterTrue() {
        self.adapter.isTaken = true
        self.milk.isTaken = true
    }
    
    func addToArray(item: Collectable) {
        itemArray.append(item)
    }
}
