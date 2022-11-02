//
//  TrashNode.swift
//  Esca.pee
//
//  Created by sml on 01/11/22.
//

import SpriteKit

class TrashNode: SKNode, AnyNode {

    private var image: SKSpriteNode?
    private var roomWidth: CGFloat!
    
    init(_ roomWidth: CGFloat) {
        super.init()
        self.image = SKSpriteNode (imageNamed: ImageConstants.shared.TRASH)
        self.isUserInteractionEnabled = true
        self.roomWidth = roomWidth
        setupNode()
        self.addChild(self.image ?? SKSpriteNode())
    }
     
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupPosition() {
        self.position = CGPoint(x: 0.822.vw(roomWidth), y: 0.27.vh)
    }
    
    func setupSize() {
        self.image!.size = CGSize(width: 0.05.vw(roomWidth), height: 0.11.vh)
    }
}
