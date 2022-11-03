//
//  CardMugScreen.swift
//  Esca.pee
//
//  Created by sml on 03/11/22.
//
import SwiftUI

struct CardMugView: View {

    var body: some View {
        ZStack {
            Image(ImageConstants.shared.SIX_DIAMONDS)
                .resizable()
                .scaledToFit()
                .frame(minHeight: UIScreen.main.bounds.height - 30)
                        }
    }
}
