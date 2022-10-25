//
//  AnyNode.swift
//  dispersinhos
//
//  Created by sml on 25/10/22.
//

import Foundation

protocol AnyNode {
    func setupPosition()
    func setupSize()
    func setupAdditionalConfiguration()
}

extension AnyNode {
    func setupNode(){
        setupPosition()
        setupSize()
        setupAdditionalConfiguration()
    }
    
    func setupAdditionalConfiguration(){}
}
