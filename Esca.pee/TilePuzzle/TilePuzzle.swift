//
//  TilePuzzle.swift
//  Esca.pee
//
//  Created by LoreVilaca on 31/10/22.
//

import SwiftUI

struct TilePuzzle: App {
    var body: some Scene {
        WindowGroup {
            TilePuzzleView().environmentObject(Board(dimension: 4))
        }
    }
}
