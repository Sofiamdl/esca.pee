//
//  BathroomScene.swift
//  Esca.pee
//
//  Created by Guilherme Souza on 01/11/22.
//

import SwiftUI
import SpriteKit

class BathroomScene: SKScene {
    var roomWidth: CGFloat!
    let roomHeight: CGFloat = UIScreen.main.bounds.height
        
    
    
    var object: CollectableManager?
    var coordinator: Coordinator?

    init(with roomWidth: CGFloat, object: CollectableManager, coordinator: Coordinator) {
        super.init(size: CGSize(width: roomWidth, height: self.roomHeight))
        self.scaleMode = .fill
        self.roomWidth = roomWidth
        self.object = object
        self.coordinator = coordinator
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func didMove(to view: SKView) {
        physicsBody = SKPhysicsBody(edgeLoopFrom: frame)
        self.backgroundColor = .clear
        view.backgroundColor = SKColor.clear.withAlphaComponent(0.0)
        addChild(BathroomNode(roomWidth, object: object!, coordinator: coordinator!))
    }
    
}
