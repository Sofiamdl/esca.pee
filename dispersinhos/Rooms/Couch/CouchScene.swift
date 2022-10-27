//
//  CouchScene.swift
//  dispersinhos
//
//  Created by LoreVilaca on 27/10/22.
//

import SwiftUI
import SpriteKit

class CouchScene: SKScene {
    var roomWidth: CGFloat!
    let roomHeight: CGFloat = UIScreen.main.bounds.height
    
    init(with roomWidth: CGFloat) {
        super.init(size: CGSize(width: roomWidth, height: self.roomHeight))
        self.scaleMode = .fill
        self.roomWidth = roomWidth
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func didMove(to view: SKView) {
        physicsBody = SKPhysicsBody(edgeLoopFrom: frame)
        self.backgroundColor = .clear
        view.backgroundColor = SKColor.clear.withAlphaComponent(0.0)
        addChild(CouchNode(roomWidth))
    }
    
}
