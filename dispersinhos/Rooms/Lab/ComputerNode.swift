//
//  ComputerNode.swift
//  dispersinhos
//
//  Created by sml on 25/10/22.
//

import SpriteKit

class ComputerNode: SKNode, AnyNode {
    private var image : SKSpriteNode?
    private var roomWidth : CGFloat!

    init(_ roomWidth: CGFloat) {
        super.init()
        self.image = SKSpriteNode(imageNamed: ImageConstants.shared.COMPUTER)
        self.isUserInteractionEnabled = true
        self.roomWidth = roomWidth
        setupNode()
        self.addChild(self.image ?? SKSpriteNode())
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupPosition() {
        self.position = CGPoint(x: 0.35.vw(roomWidth), y: 0.528.vh)
    }
    
    func setupSize() {
        self.image!.size = CGSize(width: 0.105.vw(roomWidth), height: 0.2.vh)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        print("oi")
    }
}
