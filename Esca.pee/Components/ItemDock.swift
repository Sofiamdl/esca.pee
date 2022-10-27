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
                    if object.adapter.isTaken {
                        Image(object.itemArray[index].image)
                            .resizable()
                            .frame(width: 30, height: 30)
                            .padding([.bottom, .top, .trailing, .leading], 10)
                            .background(Color.black.opacity(0.5))
                            .border(object.adapter.isClicked ? .red : .clear, width: object.adapter.isClicked ? 4 : 0)
                            .onTapGesture {
                                object.adapter.isClicked = !object.adapter.isClicked
                            }
                    }
                }
            }
        }
    }
}
