//
//  BrokenCableNode.swift
//  Esca.pee
//
//  Created by Guilherme Souza on 02/11/22.
//

import Foundation
import SpriteKit
import SwiftUI

class BrokenCableNode: SKNode, AnyNode {
    private var image : SKSpriteNode?
    private var roomWidth : CGFloat!
    var object: CollectableManager?
    var didUserTap = false

    init(_ roomWidth: CGFloat, object: CollectableManager) {
        super.init()
        if object.itemsUsed.contains(where: {$0 == object.tape.image}) {
            self.image = SKSpriteNode(imageNamed: ImageConstants.shared.FIXED_CABLE)
        } else {
            self.image = SKSpriteNode(imageNamed: ImageConstants.shared.BROKEN_CABLE)
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
        self.position = CGPoint(x: 0.25.vw(roomWidth), y: 0.41.vh)
    }
    
    func setupSize() {
        self.image!.size = CGSize(width: 0.08.vw(roomWidth), height: 0.12.vh)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        if !didUserTap {

            let i = object!.findIndex(item: object!.tape)
            if (i != -1) {
                
                if (object!.itemArray[i].isClicked) {
                    self.image?.removeFromParent()
                    self.image = SKSpriteNode(imageNamed: ImageConstants.shared.FIXED_CABLE)
                    setupNode()
                    addChild(self.image ?? SKSpriteNode())
                    object!.removeFromArray(item: object!.tape)
                    didUserTap.toggle()
                }
            }
        } else {
            self.removeFromParent()
            object!.addToArray(item: object!.fixed_cable)
        }
        //click no papel dá pra outra tela
    }
}

