//
//  ToolModel.swift
//  dispersinhos
//
//  Created by Guilherme Souza on 25/10/22.
//

import Foundation
import UIKit

struct Tool: Equatable, Identifiable {
    
    let id: Int
    var image: String
    var isTaken: Bool
    var isSelected: Bool
    
}

class ToolModel: ObservableObject {
    
    static let shared = ToolModel()
    private init () {}
    
    @Published var item1 = Tool(id: 1, image: "chave-de-fenda.png", isTaken: false, isSelected: false)
    
    //empty array
    @Published var itemArray: [Tool] = []
}
