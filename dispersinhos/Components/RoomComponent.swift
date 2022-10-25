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
    
    let imagePath: String
    let scene: SKScene
    let setImageWidth: SetWidth

    var body: some View {
        ImageBackground({
            HStack{
                SpriteView(scene: scene, options: [.allowsTransparency])
            }

        }, imagePath: imagePath)
        .background(
            GeometryReader { proxy in
                Color.clear.onAppear { setImageWidth(proxy.size.width) }
            }
        )
    }
    
    func testePrint() {
        print("oi")
    }
}
