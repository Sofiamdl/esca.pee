//
//  Errors.swift
//  Esca.pee
//
//  Created by LoreVilaca on 31/10/22.
//

import Foundation

enum InitializationError: Error {
    case noDimensionFound
    case noFileFound
}

enum BoardError: Error {
    case invalidTileIndex
}
