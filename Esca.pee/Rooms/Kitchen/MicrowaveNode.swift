//
//  MicrowaveNode.swift
//  Esca.pee
//
//  Created by sml on 01/11/22.
//

import SpriteKit

class MicrowaveNode: SKNode, AnyNode {

    private var image: SKSpriteNode?
    private var roomWidth: CGFloat!
    
    init(_ roomWidth: CGFloat) {
        super.init()
        self.image = SKSpriteNode (imageNamed: ImageConstants.shared.MICROWAVE)
        self.isUserInteractionEnabled = true
        self.roomWidth = roomWidth
        setupNode()
        self.addChild(self.image ?? SKSpriteNode())
    }
     
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupPosition() {
        self.position = CGPoint(x: 0.525.vw(roomWidth), y: 0.635.vh)
    }
    
    func setupSize() {
        self.image!.size = CGSize(width: 0.054.vw(roomWidth), height: 0.0694.vh)
    }
}
