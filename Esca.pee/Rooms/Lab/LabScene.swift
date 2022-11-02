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
        if (!(object.itemArray.contains(where: {$0.image == object.adapter.image}))) {
            addChild(ComputerNode(roomWidth, object: object))
        }
        if (!(object.itemArray.contains(where: {$0.image == object.milk.image}))) {
            addChild(CoffeeNode(roomWidth, object: object))
        }
        //addChild(DominoNode(roomWidth, object: object))
        //addChild(ScrewdriverNode(roomWidth, object: object))
        addChild(TapeNode(roomWidth, object: object))
        //addChild(LunchboxNode(roomWidth, object: object))
        addChild(ThirdTableNode(roomWidth))
        //addChild(AdapterNode(roomWidth, object: object))
        addChild(SecondTableNode(roomWidth))
        addChild(BrokenCableNode(roomWidth, object: object))
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

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        guard let touch = touches.first else { return }
        let location = touch.location(in: self)
        let box = SKSpriteNode(color: .red, size: CGSize(width: 50, height: 50))
        box.position = location
        box.physicsBody = SKPhysicsBody(rectangleOf: CGSize(width: 50, height: 50))
        addChild(box)
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
