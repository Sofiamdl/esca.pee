//
//  TableCouchNode.swift
//  Esca.pee
//
//  Created by LoreVilaca on 28/10/22.
//

import SpriteKit

class TableCouchNode: SKNode, AnyNode {
    private var image: SKSpriteNode?
    private var roomWidth: CGFloat!
    
    init(_ roomWidth: CGFloat) {
        super.init()
        self.image = SKSpriteNode(imageNamed: ImageConstants.shared.TABLE_COUCH)
        self.roomWidth = roomWidth
        
        setupNode()
        self.addChild(self.image ?? SKSpriteNode())
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    func setupPosition() {
        self.position = CGPoint(x: 0.75.vw(roomWidth), y: 0.27.vh)
    }
    
    func setupSize() {
        self.image!.size = CGSize(width: 0.25.vw(roomWidth), height: 0.5.vh)
    }
    
}
