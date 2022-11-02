//
//  MilkNode.swift
//  Esca.pee
//
//  Created by Guilherme Souza on 02/11/22.
//

import SpriteKit

class MilkNode: SKNode, AnyNode {

    private var image: SKSpriteNode?
    private var roomWidth: CGFloat!
    
    init(_ roomWidth: CGFloat) {
        super.init()
        self.image = SKSpriteNode (imageNamed: ImageConstants.shared.MILK)
        self.isUserInteractionEnabled = true
        self.roomWidth = roomWidth
        setupNode()
        self.addChild(self.image ?? SKSpriteNode())
    }
     
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupPosition() {
        self.position = CGPoint(x: 0.125.vw(roomWidth), y: 0.44.vh)
    }
    
    func setupSize() {
        self.image!.size = CGSize(width: 0.07.vw(roomWidth), height: 0.15.vh)
    }
}

