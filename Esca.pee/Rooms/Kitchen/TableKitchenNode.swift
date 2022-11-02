//
//  TableKitchenNode.swift
//  Esca.pee
//
//  Created by sml on 01/11/22.
//

import SpriteKit

class TableKitchenNode: SKNode, AnyNode {

    private var image: SKSpriteNode?
    private var roomWidth: CGFloat!
    
    init(_ roomWidth: CGFloat) {
        super.init()
        self.image = SKSpriteNode (imageNamed: ImageConstants.shared.TABLE_KITCHEN)
        self.isUserInteractionEnabled = true
        self.roomWidth = roomWidth
        setupNode()
        self.addChild(self.image ?? SKSpriteNode())
    }
     
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupPosition() {
        self.position = CGPoint(x: 0.87.vw(roomWidth), y: 0.24.vh)
    }
    
    func setupSize() {
        self.image!.size = CGSize(width: 0.24.vw(roomWidth), height: 0.33.vh)
    }
}
