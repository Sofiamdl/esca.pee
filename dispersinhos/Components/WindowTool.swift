//
//  WindowTool.swift
//  dispersinhos
//
//  Created by Guilherme Souza on 25/10/22.
//

import Foundation
import SwiftUI

struct WindowTool: View {
    
    @ObservedObject var itemData = ToolModel.shared
    @Binding var putItem: Tool
    @State var width: CGFloat
    @State var height: CGFloat
    @State var x: CGFloat
    @State var y: CGFloat
    
    var body: some View {

//        if !itemData.itemArray.contains(putItem) && !putItem.isTaken {
//            {
//                Image(putItem.image).resizable()
//            }()
//                .frame(minWidth: 0, maxWidth: width, minHeight: 0, maxHeight: height)
//                .offset(x: x, y: y)
//                .onTapGesture {
////                    putItem.isTaken = true
////                    addItem(item: putItem)
//                    print(itemData.itemArray)
//                }
//        } else {}
        ItemDock()
    }
    
    func addItem(item: Tool) {
        itemData.itemArray.append(item)
    }
}
