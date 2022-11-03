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
    var object: CollectableManager?
    var coordinator: Coordinator?

    init(with roomWidth: CGFloat, object: CollectableManager, coordinator: Coordinator) {
        super.init(size: CGSize(width: roomWidth, height: self.roomHeight))
        self.object = object
        self.coordinator = coordinator
        self.roomWidth = roomWidth
        addChild(CouchNode(roomWidth))
        addChild(PoufNode(roomWidth))
        addChild(NotebookNode(roomWidth,object: object, coordinator: coordinator))
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func didMove(to view: SKView) {
        physicsBody = SKPhysicsBody(edgeLoopFrom: frame)
        self.backgroundColor = .clear
        view.backgroundColor = SKColor.clear.withAlphaComponent(0.0)
        
    }
    
}
