//
//  HomeScreenView.swift
//  Esca.pee
//
//  Created by Guilherme Souza on 02/11/22.
//

import SwiftUI

struct HomeScreenView: View {
    
    @State private var isShowingGameView = false
    @EnvironmentObject private var coordinator: Coordinator
    
    var body: some View {
        ZStack {
            VStack {
                Spacer()
                Image("Escapee")
                Spacer()
                    .frame(height: 30)
                    Button(action: {
                        coordinator.goToGameView()
                    }) {
                        Image("play-button")
                    }
                Spacer()
            }
        }
        .background(
            Image("background-telainicial")
                .resizable()
                .ignoresSafeArea()
                .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height))
    }
}

struct HomeScreenView_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreenView().previewInterfaceOrientation(.landscapeLeft)
    }
}
