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

    @Published var milk: Bool
    @Published var lostPiece: Bool
    @Published var adapter: Bool
    @Published var paper: Bool
    @Published var coffee: Coffee

    init(milk: Bool, lostPiece: Bool, adapter: Bool, paper: Bool, coffee: Coffee) {
        self.milk = milk
        self.lostPiece = lostPiece
        self.adapter = adapter
        self.paper = paper
        self.coffee = coffee
    }
    
    func adapterTrue() {
        self.adapter = true
    }
}
