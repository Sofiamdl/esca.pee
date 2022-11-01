//
//  ZoomView.swift
//  Esca.pee
//
//  Created by sml on 31/10/22.
//

import SwiftUI

struct ZoomView: View {
    let dock = ItemDock()

    var body: some View {
        Image(ImageConstants.shared.ZOOM_TABLE)
            .resizable()
            .scaledToFit()
            .frame(minWidth: UIScreen.main.bounds.width + 20, minHeight: UIScreen.main.bounds.height + 30)
            .overlay(
                ZStack {
                    dock
                }.offset(x: 0, y: -UIScreen.main.bounds.height/2 + CGFloat(70))
                 .frame(height: UIScreen.main.bounds.height)
            ).ignoresSafeArea()
            .frame(maxWidth:.infinity, maxHeight: .infinity)
    }
        
    
}

