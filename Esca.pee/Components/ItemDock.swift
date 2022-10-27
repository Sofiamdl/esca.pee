//
//  ItemDock.swift
//  dispersinhos
//
//  Created by Guilherme Souza on 25/10/22.
//

import Foundation
import SwiftUI

struct ItemDock: View {
    
    @EnvironmentObject private var object: CollectableManager
    
    var body: some View {
        ZStack {
            HStack (spacing: 5) {
                ForEach (0 ..< object.itemArray.count, id: \.self) { index in
                    Image(object.itemArray[index].image)
                        .resizable()
                        .frame(width: 0.1.vh, height: 0.1.vh)
                        .padding([.bottom, .top, .trailing, .leading], 10)
                        .background(Color.black.opacity(0.5))
                        .border(object.itemArray[index].isClicked ? .red : .clear, width: object.itemArray[index].isClicked ? 4 : 0)
                        .onTapGesture {
                            object.changeClicked(index)
                        }
                }
            }
        }
    }
}
