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
    @EnvironmentObject private var coordinator: Coordinator
    
    @State var index = 0
    
    var body: some View {
        ZStack {
            HStack (spacing: 5) {
                ForEach (0 ..< object.itemArray.count, id: \.self) { index in
                    VStack {
                        Image(object.itemArray[index].image)
                            .resizable()
                            .frame(width: 0.1.vh, height: 0.1.vh)
                            .padding([.bottom, .top, .trailing, .leading], 10)
                            .background(Color.black.opacity(0.5))
                            .border(object.itemArray[index].isClicked ? .red : .clear, width: object.itemArray[index].isClicked ? 4 : 0)
                        
                            .onTapGesture {
                                if (object.itemArray[index].image == object.mug_card.image) {
                                    coordinator.cardMugView()
                                } else {
                                    object.changeClicked(index)
                                    //print(object.itemArray[index].image)
                                    //Text(object.itemArray[index].isClicked ? object.itemArray[index].image : "")
                                }
                            }
                        if object.itemArray[index].isClicked {
                            Text(object.itemArray[index].image)
                                .bold()
                                .foregroundColor(Color.white)
                                .frame(width: 0.3.vh, height: 0.02.vh)
                                .padding([.bottom, .top, .trailing, .leading], 10)
                                .background(Color.black.opacity(0.5))
                        }
                    }
                }

            }
        }
    }
}
