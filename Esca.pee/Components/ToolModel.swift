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
    
    //empty array
    @Published var itemArray: [Tool] = []
}
