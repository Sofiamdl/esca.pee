//
//  ComputerNode.swift
//  dispersinhos
//
//  Created by sml on 25/10/22.
//

import SpriteKit
import SwiftUI

class ComputerNode: SKNode, AnyNode {
    private var image : SKSpriteNode?
    private var roomWidth : CGFloat!
    var canZoom = false

    var object: CollectableManager?
    var coordinator: Coordinator?

    init(_ roomWidth: CGFloat, object: CollectableManager, coordinator: Coordinator) {
        super.init()
        let computerUsed = object.itemsUsed.contains(where: {$0 == object.computer.image})
        if computerUsed {
            self.image = SKSpriteNode(imageNamed: ImageConstants.shared.SOLVED_COMPUTER)
        } else {
            self.image = SKSpriteNode(imageNamed: ImageConstants.shared.COMPUTER)
        }
        canZoom = computerUsed
        self.isUserInteractionEnabled = true
        self.roomWidth = roomWidth
        self.object = object
        self.coordinator = coordinator
        setupNode()
        self.addChild(self.image ?? SKSpriteNode())
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupPosition() {
        self.position = CGPoint(x: 0.35.vw(roomWidth), y: 0.528.vh)
    }
    
    func setupSize() {
        self.image!.size = CGSize(width: 0.105.vw(roomWidth), height: 0.2.vh)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        if !canZoom {
            let i = object!.findIndex(item: object!.fixed_cable)
            if (i != -1) {
                if (object!.itemArray[i].isClicked) {
                    self.image?.removeFromParent()
                    self.image = SKSpriteNode(imageNamed: ImageConstants.shared.SOLVED_COMPUTER)
                    self.addChild(self.image ?? SKSpriteNode())
                    object!.removeFromArray(item: object!.fixed_cable)
                    object!.useItem(item: object!.computer)
                    canZoom.toggle()
                }
            }
        } else {
            self.coordinator?.computer()
        }
    }
}
