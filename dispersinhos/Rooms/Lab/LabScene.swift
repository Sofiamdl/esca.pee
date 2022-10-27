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

    init(with roomWidth: CGFloat, object: CollectableManager) {
        super.init(size: CGSize(width: roomWidth, height: UIScreen.main.bounds.height + 20))
        self.scaleMode = .fill
        self.object = object
        self.roomWidth = roomWidth
        print(object.adapter)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    var player = SKSpriteNode()

    override func didMove(to view: SKView) {
        physicsBody = SKPhysicsBody(edgeLoopFrom: frame)
        self.backgroundColor = .clear
        view.backgroundColor = SKColor.clear.withAlphaComponent(0.0)
        addChild(BookshelfNode(roomWidth))
        addChild(TableNode(roomWidth))
        addChild(ComputerNode(roomWidth, object: object!))
        addChild(ThirdTableNode(roomWidth))
        addChild(SecondTableNode(roomWidth))
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
            // 1
            node.position.x -= 4
            print("node position x = \(node.position.x)")
            // 2
            if node.position.x < -(self.scene?.size.width)! {
                node.position.x += (self.scene?.size.width)! * 3
            }
         }))
    }
}
