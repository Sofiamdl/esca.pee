//
//  ContentView.swift
//  dispersinhos
//
//  Created by sml on 18/10/22.
//

import SwiftUI

struct GameView: View {

    @EnvironmentObject private var object: CollectableManager

    let dock = ItemDock()
    var body: some View {
        ScrollBackground({
            HStack (alignment: .top,spacing: -0.5) {
                    Lab()
//                    Kitchen()
                    Couch()
                    Lockers()
                }
            .ignoresSafeArea()
            .frame(maxWidth:.infinity, maxHeight: .infinity)
        }).overlay(
            ZStack {
                dock
            }.offset(x: 0, y: -UIScreen.main.bounds.height/2 + CGFloat(70))
             .frame(height: UIScreen.main.bounds.height)

        )
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        GameView()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}
