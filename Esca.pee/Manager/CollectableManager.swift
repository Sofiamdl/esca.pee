//
//  CollectableManager.swift
//  dispersinhos
//
//  Created by sml on 25/10/22.
//

import SwiftUI

class CollectableManager: ObservableObject {
    
    init () {}

//    enum Coffee: String {
//        case powder
//        case full
//        case withMilk
//        case empty
//    }
    
    struct Collectable {
        var isClicked: Bool
        var image: String
    }
    
//    struct CoffeeCollectable {
//        var coffee: Coffee
//        var
//
//    }
    
    @Published var itemArray: [Collectable] = []


    @Published var milk: Collectable = Collectable(isClicked: false,  image: ImageConstants.shared.COFFEEMUG)
    @Published var lostPiece: Collectable = Collectable(isClicked: false,  image: ImageConstants.shared.TEST_IMAGE)
    @Published var adapter: Collectable = Collectable(isClicked: false,  image: ImageConstants.shared.COMPUTER)
    @Published var paper: Collectable = Collectable(isClicked: false, image: ImageConstants.shared.PAPER)
//    @Published var coffee: Coffee = .empty

    
    func addToArray(item: Collectable) {
        itemArray.append(item)
    }
    
    func changeClicked(_ index: Int) {
        var isClicked = false
        
        for (i, _) in itemArray.enumerated() {
            if (i == index && itemArray[i].isClicked == true) { isClicked = true }
            itemArray[i].isClicked = false
        }
        
        if (!isClicked) {
            itemArray[index].isClicked = true
        }
    }

}
