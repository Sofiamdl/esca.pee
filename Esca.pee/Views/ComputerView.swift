//
//  ComputerView.swift
//  Esca.pee
//
//  Created by sml on 02/11/22.
//

import SwiftUI

struct ComputerView: View {
    @EnvironmentObject private var coordinator: Coordinator

    var body: some View {
        ZStack {
            Image(ImageConstants.shared.TWO_SPADES)
                .resizable()
                .scaledToFit()
                .frame(minHeight: UIScreen.main.bounds.height - 30)
                .frame(maxWidth:.infinity, maxHeight: .infinity)
        }
    }
}

