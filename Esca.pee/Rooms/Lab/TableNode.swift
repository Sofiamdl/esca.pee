//
//  TableScene.swift
//  dispersinhos
//
//  Created by sml on 25/10/22.
//

import SpriteKit

class TableNode: SKNode, AnyNode {
    private var image : SKSpriteNode?
    private var roomWidth : CGFloat!
    

    init(_ roomWidth: CGFloat) {
        super.init()
        self.image = SKSpriteNode(imageNamed: ImageConstants.shared.TABLE)
        self.roomWidth = roomWidth
        
        setupNode()
        self.addChild(self.image ?? SKSpriteNode())
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupPosition() {
        self.position = CGPoint(x: 0.255.vw(roomWidth), y: 0.295.vh)
    }
    
    func setupSize() {
        self.image!.size = CGSize(width: 0.45.vw(roomWidth), height: 0.6.vh)
    }
    
    func setupAdditionalConfiguration() {
        self.isUserInteractionEnabled = true
    }
}
