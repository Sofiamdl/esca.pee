//
//  SpriteKitLab.swift
//  dispersinhos
//
//  Created by sml on 24/10/22.
//
import SwiftUI
import SpriteKit

class LabScene: SKScene {
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
        addChild(BookshelfNode(roomWidth))
        addChild(TableNode(roomWidth))
        addChild(ComputerNode(roomWidth, object: object, coordinator: coordinator))
        let tapeInDock = !(object.itemArray.contains(where: {$0.image == object.tape.image}))
        let tapeIsUsed = !(object.itemsUsed.contains(where: {$0 == object.tape.image}))

        if (tapeInDock && tapeIsUsed) {
            addChild(TapeNode(roomWidth, object: object))
        }
        addChild(ThirdTableNode(roomWidth))
        addChild(SecondTableNode(roomWidth))
        let cableInDock = !(object.itemArray.contains(where: {$0.image == object.fixed_cable.image}))
        let cableIsUsed = !(object.itemsUsed.contains(where: {$0 == object.fixed_cable.image}))
        if (cableInDock && cableIsUsed) {
            addChild(BrokenCableNode(roomWidth, object: object))
        }
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    var player = SKSpriteNode()

    override func didMove(to view: SKView) {
        physicsBody = SKPhysicsBody(edgeLoopFrom: frame)
        self.backgroundColor = .clear
        view.backgroundColor = SKColor.clear.withAlphaComponent(0.0)
    }
    
    func scrollBackground(){
        self.enumerateChildNodes(withName: "table", using: ({
            (node, error) in

            node.position.x -= 4
            print("node position x = \(node.position.x)")

            if node.position.x < -(self.scene?.size.width)! {
                node.position.x += (self.scene?.size.width)! * 3
            }
         }))
    }
}
