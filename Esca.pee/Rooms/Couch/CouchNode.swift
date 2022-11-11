//
//  CouchNode.swift
//  dispersinhos
//
//  Created by LoreVilaca on 27/10/22.
//

import SpriteKit

class CouchNode: SKNode, AnyNode {
    private var image: SKSpriteNode?
    private var roomWidth: CGFloat!
    
    init (_ roomWidth: CGFloat){
        super.init()
        self.image = SKSpriteNode(imageNamed: ImageConstants.shared.COUCH)
        self.roomWidth = roomWidth
        self.isUserInteractionEnabled = true
        setupNode()
        self.addChild(self.image ?? SKSpriteNode())
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupPosition() {
        self.position = CGPoint(x: 0.4.vw(roomWidth), y: 0.65.vh)
    }
    
    func setupSize() {
        self.image!.size = CGSize(width: 0.45.vw(roomWidth), height: 0.47.vh)
    }
}
