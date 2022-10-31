//
//  ScrewdriverNode.swift
//  Esca.pee
//
//  Created by Guilherme Souza on 31/10/22.
//

import Foundation
import SpriteKit
import SwiftUI

class ScrewdriverNode: SKNode, AnyNode {
    private var image : SKSpriteNode?
    private var roomWidth : CGFloat!
    var object: CollectableManager?

    init(_ roomWidth: CGFloat, object: CollectableManager) {
        super.init()
        self.image = SKSpriteNode(imageNamed: ImageConstants.shared.SCREWDRIVER)
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
        self.position = CGPoint(x: 0.32.vw(roomWidth), y: 0.78.vh)
    }
    
    func setupSize() {
        self.image!.size = CGSize(width: 0.105.vw(roomWidth), height: 0.08.vh)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.removeFromParent()
        object!.addToArray(item: object!.screwdriver)
        // mandar esse objeto pro itemDock -- como?
        // implementar isso em todos os coletáveis
        
    }
}
