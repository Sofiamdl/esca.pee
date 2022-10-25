//
//  ContentView.swift
//  dispersinhos
//
//  Created by sml on 18/10/22.
//

import SwiftUI

struct GameView: View {
    var body: some View {
        ScrollBackground({
            HStack (alignment: .top){
                    Lab()
//                    Kitchen()
//                    Lockers()
                }
            .ignoresSafeArea()
            .frame(maxWidth:.infinity, maxHeight: .infinity)
        })
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        GameView()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}
