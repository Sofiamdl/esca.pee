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
                if object.adapter.isTaken {
                        Image("chave-de-fenda")
                            .resizable()
                            .frame(width: 45, height: 45)
                            .background(Color.black.opacity(0.5))
                            .border(object.adapter.isClicked ? .red : .clear)
                            .onTapGesture {
                                object.adapter.isClicked = !object.adapter.isClicked
                            }
                }
            }
        }
    }
    
    // func to add item to window tool array
    // add global array to code
    //    func addItem(item: Tool) {
    //        itemData.itemArray.append(item)
    //    }
}
