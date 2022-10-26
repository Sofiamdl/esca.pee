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
                ForEach(0 ..< 5, id: \.self) { index in
                    Image("chave-de-fenda")
                        .resizable()
                        .frame(width: 45, height: 45)
                        .background(Color.black.opacity(0.5))
                        .onTapGesture {
                            print("item \(index) selecionado")
//                            itemData.itemArray[index].isSelected.toggle()
//                            itemData.itemArray[index].isTaken = true
                            
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
