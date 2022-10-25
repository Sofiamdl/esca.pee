//
//  CollectableManager.swift
//  dispersinhos
//
//  Created by sml on 25/10/22.
//

import Foundation


class CollectableManager {

    static let shared = CollectableManager()
    private init(){}
    
    struct Key {
        let name: String
        var wasCollecgted: Bool
    }
    
    
    var keys: [Key] = [
        
    ]
}
