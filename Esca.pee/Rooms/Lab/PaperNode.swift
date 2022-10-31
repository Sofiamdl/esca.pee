//
//  PaperNode.swift
//  Esca.pee
//
//  Created by Guilherme Souza on 31/10/22.
//

import Foundation
import SpriteKit
import SwiftUI

class PaperNode: SKNode, AnyNode {
    private var image : SKSpriteNode?
    private var roomWidth : CGFloat!
    var object: CollectableManager?

    init(_ roomWidth: CGFloat, object: CollectableManager) {
        super.init()
        self.image = SKSpriteNode(imageNamed: ImageConstants.shared.PAPER)
        self.isUserInteractionEnabled = true
        self.roomWidth = roomWidth
        self.object = object
        setupNode()
        self.addChild(self.image ?? SKSpriteNode())
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func setupPosition() {
        self.position = CGPoint(x: 0.50.vw(roomWidth), y: 0.528.vh)
    }
    
    func setupSize() {
        self.image!.size = CGSize(width: 0.105.vw(roomWidth), height: 0.2.vh)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.removeFromParent()
        object!.addToArray(item: object!.paper)
    }
}
