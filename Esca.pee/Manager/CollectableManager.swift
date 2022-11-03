//
//  CollectableManager.swift
//  dispersinhos
//
//  Created by sml on 25/10/22.
//

import SwiftUI

struct DefaultsKeys {
    static let keyOne = "firstStringKey"
    static let keyTwo = "secondStringKey"
}

class CollectableManager: ObservableObject {
    
    init () {
        let defaults = UserDefaults.standard
        if let elementOne = defaults.array(forKey: DefaultsKeys.keyOne) {
            for element in elementOne {
                itemArray.append(Collectable(isClicked: false, image: element as! String))
                itemArrayAux.append(element as! String)
            }
        }
    }

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
    var itemArrayAux: [String] = []
    var itemArrayName: [String] = []


    @Published var milk: Collectable = Collectable(isClicked: false,  image: ImageConstants.shared.MILK)
    @Published var screwdriver: Collectable = Collectable(isClicked: false,  image: ImageConstants.shared.SCREWDRIVER)
    @Published var adapter: Collectable = Collectable(isClicked: false,  image: ImageConstants.shared.ADAPTER)
    @Published var paper: Collectable = Collectable(isClicked: false, image: ImageConstants.shared.PAPER)
    @Published var lunchbox: Collectable = Collectable(isClicked: false, image: ImageConstants.shared.LUNCHBOX)
    @Published var computer: Collectable = Collectable(isClicked: false, image: ImageConstants.shared.COMPUTER)
    @Published var domino: Collectable = Collectable(isClicked: false, image: ImageConstants.shared.DOMINO)
    @Published var tape: Collectable = Collectable(isClicked: false, image: ImageConstants.shared.TAPE)
    @Published var key: Collectable = Collectable(isClicked: false, image: ImageConstants.shared.KEY)
    @Published var mug_coffee: Collectable = Collectable(isClicked: false, image: ImageConstants.shared.MUG_COFFEE)
    @Published var fixed_cable: Collectable = Collectable(isClicked: false, image: ImageConstants.shared.FIXED_CABLE)
//    @Published var coffee: Coffee = .empty

    
    func addToArray(item: Collectable) {
        itemArray.append(item)
        itemArrayAux.append(item.image)
        let defaults = UserDefaults.standard
        defaults.set(itemArrayAux, forKey: DefaultsKeys.keyOne)
    }
    
//    func getId(item: Collectable) -> Int {
//        return item.id
//    }
    
    func changeClicked(_ index: Int) {
        //print(String(describing:itemArray))
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
