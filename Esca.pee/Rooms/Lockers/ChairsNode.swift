//
//  ChairsNode.swift
//  Esca.pee
//
//  Created by LoreVilaca on 28/10/22.
//

import SpriteKit

class ChairsNode: SKNode, AnyNode {
    private var image: SKSpriteNode?
    private var roomWidth: CGFloat!
    
    init(_ roomWidth: CGFloat) {
        super.init()
        self.image = SKSpriteNode(imageNamed: ImageConstants.shared.CHAIRS)
        self.roomWidth = roomWidth
        
        setupNode()
        self.addChild(self.image ?? SKSpriteNode())
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupPosition() {
        self.position = CGPoint(x: 0.38.vw(roomWidth), y: 0.19.vh)
    }
    
    func setupSize() {
        self.image!.size = CGSize(width: 0.18.vw(roomWidth), height: 0.49.vh)
    }
}
