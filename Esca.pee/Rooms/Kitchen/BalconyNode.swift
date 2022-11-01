//
//  BalconyNode.swift
//  Esca.pee
//
//  Created by sml on 01/11/22.
//

import SpriteKit

class BalconyNode: SKNode, AnyNode {

    private var image: SKSpriteNode?
    private var roomWidth: CGFloat!
    
    init(_ roomWidth: CGFloat) {
        super.init()
        self.image = SKSpriteNode (imageNamed: ImageConstants.shared.BALCONY)
        self.isUserInteractionEnabled = true
        self.roomWidth = roomWidth
        setupNode()
        self.addChild(self.image ?? SKSpriteNode())
    }
     
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupPosition() {
        self.position = CGPoint(x: 0.574.vw(roomWidth), y: 0.471.vh)
    }
    
    func setupSize() {
        self.image!.size = CGSize(width: 0.28.vw(roomWidth), height: 0.32.vh)
    }
}
