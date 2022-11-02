//
//  LockersScene.swift
//  Esca.pee
//
//  Created by LoreVilaca on 28/10/22.
//

import SwiftUI
import SpriteKit

class LockersScene: SKScene {
    var roomWidth: CGFloat!
    let roomHeight: CGFloat = UIScreen.main.bounds.height
    var coordinator: Coordinator?
    var object: CollectableManager?

    
    init(with roomWidth: CGFloat, coordinator: Coordinator, object: CollectableManager) {
        super.init(size: CGSize(width: roomWidth, height: self.roomHeight))
        self.scaleMode = .fill
        self.coordinator = coordinator
        self.roomWidth = roomWidth
        addChild(LockersNode(roomWidth, coordinator: coordinator, object: object))
        addChild(TableCouchNode(roomWidth))
        addChild(ChairsNode(roomWidth))
        addChild(PoufNode(roomWidth))
        //addChild(NotebookNode(roomWidth, coordinator: coordinator))
        addChild(CoffeeNode(roomWidth, object: object))
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
