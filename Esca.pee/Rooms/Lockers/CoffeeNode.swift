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
    var didUserTap = false

    init(_ roomWidth: CGFloat, object: CollectableManager) {
        super.init()
        if object.itemsUsed.contains(where: {$0 == object.milk.image}) {
            self.image = SKSpriteNode(imageNamed: ImageConstants.shared.MUG_BLEND)
        } else {
            self.image = SKSpriteNode(imageNamed: ImageConstants.shared.MUG_POWDER)
        }
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
        self.position = CGPoint(x: 0.415.vw(roomWidth), y: 0.28.vh)
    }
    
    func setupSize() {
        self.image!.size = CGSize(width: 0.025.vw(roomWidth), height: 0.08.vh)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        if !didUserTap {
            let i = object!.findIndex(item: object!.milk)
            if (i != -1) {
                if (object!.itemArray[i].isClicked) {
                    self.image?.removeFromParent()
                    self.image = SKSpriteNode(imageNamed: ImageConstants.shared.MUG_BLEND)
                    setupNode()
                    addChild(self.image ?? SKSpriteNode())
                    object!.useItem(item: object!.milk)
                    didUserTap.toggle()
                }
            }
        } else {
            self.removeFromParent()
            object!.addToArray(item: object!.mug_coffee)
        }
        //com leite selecionado, vira mug-blend
        //clica de novo, vira mug-card
        
    }
}
