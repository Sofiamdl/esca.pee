//
//  CollectableManager.swift
//  dispersinhos
//
//  Created by sml on 25/10/22.
//

import Foundation

struct Key {
    var milk: Bool
    var lostPiece: Bool
    var adapter: Bool
    var paper: Bool
    var coffee: Bool
    
}


class CollectableManager {

    static let shared = CollectableManager()
    private init(){}
    
    var keys: Key = Key(milk: false, lostPiece: false, adapter: false, paper: false, coffee: false)
    
    func setMilkTrue() {
        keys.milk = true
    }
    
    func setMilkFalse() {
        keys.milk = false
    }
    
    func setLostPieceTrue() {
        keys.lostPiece = true
    }
    
    func setLostPieceFalse() {
        keys.lostPiece = false
    }
    
    func adapterTrue() {
        keys.adapter = true
    }
    
    func adapterFalse() {
        keys.adapter = false
    }
    
    func paperTrue() {
        keys.paper = true
    }
    
    func paperFalse() {
        keys.paper = false
    }
    
    func coffeeTrue() {
        keys.coffee = true
    }
    
    func coffeeFalse() {
        keys.coffee = false
    }
}
