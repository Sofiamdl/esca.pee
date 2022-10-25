//
//  ItemDock.swift
//  dispersinhos
//
//  Created by Guilherme Souza on 25/10/22.
//

import Foundation
import SwiftUI

struct ItemDock: View {
    var body: some View{
        ZStack {
            HStack (spacing: 5) {
                ForEach(0 ..< 3, id: \.self) { index in
                    Image("chave-de-fenda")
                        .resizable()
                        .frame(width: 45, height: 45)
                        .background(Color.green.opacity(0.5))
                        .onTapGesture {
                            print("item \(index) selecionado")
                        }
                }
            }
        }
    }
}
