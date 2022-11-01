//
//  LockersNode.swift
//  Esca.pee
//
//  Created by LoreVilaca on 01/11/22.
//

import SpriteKit

class LockersNode: SKNode, AnyNode {
    private var image: SKSpriteNode?
    private var roomWidth: CGFloat!
    
    init(_ roomWidth: CGFloat) {
        super.init()
        self.image = SKSpriteNode(imageNamed: ImageConstants.shared.LOCKERS)
        self.roomWidth = roomWidth
        
        setupNode()
        self.addChild(self.image ?? SKSpriteNode())
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    func setupPosition() {
        self.position = CGPoint(x: 0.5.vw(roomWidth), y: 0.53.vh)
    }
    
    func setupSize() {
        self.image!.size = CGSize(width: 0.5.vw(roomWidth), height: 0.52.vh)
    }
    
}
