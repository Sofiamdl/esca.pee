//
//  KitchenScene.swift
//  Esca.pee
//
//  Created by sml on 01/11/22.
//

import SwiftUI
import SpriteKit

class KitchenScene: SKScene {
    var roomWidth: CGFloat!
    let roomHeight: CGFloat = UIScreen.main.bounds.height
    
    var object: CollectableManager?
    var coordinator: Coordinator?

    init(with roomWidth: CGFloat, object: CollectableManager, coordinator: Coordinator ) {
        super.init(size: CGSize(width: roomWidth, height: UIScreen.main.bounds.height))
        self.scaleMode = .fill
        self.object = object
        self.coordinator = coordinator
        self.roomWidth = roomWidth
        addChild(SecondeBalconyNode(roomWidth))
        addChild(BalconyNode(roomWidth))
        if (!(object.itemArray.contains(where: {$0.image == object.milk.image}))){
            addChild(MilkNode(roomWidth, object: object))
        }
        addChild(TrashNode(roomWidth))
        addChild(CabinetNode(roomWidth))
        addChild(RefrigeratorNode(roomWidth))
        addChild(TableKitchenNode(roomWidth))
        addChild(MicrowaveNode(roomWidth, object: object))
        addChild(LunchboxNode(roomWidth, object: object, coordinator: coordinator))
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    var player = SKSpriteNode()

    override func didMove(to view: SKView) {
        self.backgroundColor = .clear
        view.backgroundColor = SKColor.clear.withAlphaComponent(0.0)
    }
}
