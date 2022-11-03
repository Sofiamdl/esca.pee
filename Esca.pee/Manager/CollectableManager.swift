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
        if let elementTwo = defaults.array(forKey: DefaultsKeys.keyTwo) {
            for element in elementTwo {
                itemsUsed.append(element as! String)
            }
        }
    }
    
    struct Collectable {
        var isClicked: Bool
        var image: String
    }
    
    
    @Published var itemArray: [Collectable] = []
    var itemArrayAux: [String] = []
    @Published var itemsUsed: [String] = []
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
    @Published var mug_coffee: Collectable = Collectable(isClicked: false, image: ImageConstants.shared.MUG_BLEND)
    @Published var fixed_cable: Collectable = Collectable(isClicked: false, image: ImageConstants.shared.FIXED_CABLE)
    @Published var mug_card: Collectable = Collectable(isClicked: false, image: ImageConstants.shared.MUG_CARD)

    
    func addToArray(item: Collectable) {
        itemArray.append(item)
        itemArrayAux.append(item.image)
        let defaults = UserDefaults.standard
        defaults.set(itemArrayAux, forKey: DefaultsKeys.keyOne)
    }
    
    func useItem(item: Collectable) {
        itemsUsed.append(item.image)
        let defaults = UserDefaults.standard
        defaults.set(itemsUsed, forKey: DefaultsKeys.keyTwo)
    }
    
    func removeFromArray(item: Collectable) {
        for (index, _) in itemArray.enumerated() {
            if item.image == self.itemArray[index].image {
                itemsUsed.append(item.image)
                itemArray.remove(at: index)
                itemArrayAux.remove(at: index)
                let defaults = UserDefaults.standard
                defaults.set(itemsUsed, forKey: DefaultsKeys.keyTwo)
                defaults.set(itemArrayAux, forKey: DefaultsKeys.keyOne)
                return
            }
        }
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
    
    func findIndex(item: Collectable) -> Int {
        for (index, _) in itemArray.enumerated() {
            if item.image == itemArray[index].image {
                return index
            }
        }
        return (-1)
    }
}
