//
//  RoomComponent.swift
//  dispersinhos
//
//  Created by sml on 24/10/22.
//

import SwiftUI
import SpriteKit


struct RoomComponent: View {
    typealias SetWidth = (CGFloat) -> ()
    @EnvironmentObject private var object: CollectableManager

    let imagePath: String
    let scene: SKScene
    
    let setImageWidth: SetWidth

    var body: some View {
        ImageBackground({
            HStack{
                SpriteView(scene: scene, options: [.allowsTransparency]).environmentObject(object)
            }

        }, imagePath: imagePath)
        .background(
            GeometryReader { proxy in
                Color.clear.onAppear { setImageWidth(proxy.size.width) }
            }
        )
    }
}
