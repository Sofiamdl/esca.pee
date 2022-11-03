//
//  ComputerView.swift
//  Esca.pee
//
//  Created by sml on 02/11/22.
//

import SwiftUI

struct ComputerView: View {
    let dock = ItemDock()
    @EnvironmentObject private var coordinator: Coordinator

    var body: some View {
        ZStack {
            Image(ImageConstants.shared.SIX_DIAMONDS)
                .resizable()
                .scaledToFit()
                .frame(minHeight: UIScreen.main.bounds.height - 30)
                .overlay(
                    ZStack {
                        dock
                    }.offset(x: 0, y: -UIScreen.main.bounds.height/2 + CGFloat(70))
                        .frame(height: UIScreen.main.bounds.height)
                ).ignoresSafeArea()
                .frame(maxWidth:.infinity, maxHeight: .infinity)
        }
    }
}

