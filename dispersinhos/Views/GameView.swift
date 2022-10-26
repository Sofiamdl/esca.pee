//
//  ContentView.swift
//  dispersinhos
//
//  Created by sml on 18/10/22.
//

import SwiftUI

struct GameView: View {
    @EnvironmentObject private var object: CollectableManager

    var body: some View {
        HStack {
            ScrollBackground({
                HStack (alignment: .top){
                        Lab()
    //                    Kitchen()
    //                    Lockers()
                    }
                .ignoresSafeArea()
                .frame(maxWidth:.infinity, maxHeight: .infinity)
            }).overlay(
                VStack (alignment: .leading) {
                    if (object.adapter) {
                        VStack{
                            Image(ImageConstants.shared.COMPUTER)
                        }.offset(x: 100, y: 100)
                    }
                })
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        GameView()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}
