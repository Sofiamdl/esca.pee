//
//  CoffeeNode.swift
//  dispersinhos
//
//  Created by Guilherme Souza on 27/10/22.
//

import Foundation
import SpriteKit
import SwiftUI

class CoffeeNode: SKNode, AnyNode {
    private var image : SKSpriteNode?
    private var roomWidth : CGFloat!
    var object: CollectableManager?

    init(_ roomWidth: CGFloat, object: CollectableManager) {
        super.init()
        self.image = SKSpriteNode(imageNamed: ImageConstants.shared.MUG_COFFEE)
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
        self.position = CGPoint(x: 0.52.vw(roomWidth), y: 0.28.vh)
    }
    
    func setupSize() {
        self.image!.size = CGSize(width: 0.05.vw(roomWidth), height: 0.10.vh)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.removeFromParent()
        object!.addToArray(item: object!.mug_coffee)
        //com leite selecionado, vira mug-blend
        //clica de novo, vira mug-card
        
    }
}
