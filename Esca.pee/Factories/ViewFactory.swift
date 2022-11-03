//
//  ViewFactory.swift
//  Esca.pee
//
//  Created by sml on 31/10/22.
//

import SwiftUI


class ViewFactory {
    @ViewBuilder
    static func viewForDestination(_ destination: Destination) -> some View {
        switch destination {
        case .tilePuzzle:
            TilePuzzleView().environmentObject(Board(dimension: 3))
        case .lockerPassword:
            LockerPasswordView()
        case .gameView:
            GameView()
                .navigationBarBackButtonHidden(true)
        }
    }
}
