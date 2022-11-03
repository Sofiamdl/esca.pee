//
//  LunchboxNode.swift
//  Esca.pee
//
//  Created by Guilherme Souza on 31/10/22.
//

import Foundation
import SpriteKit
import SwiftUI

class LunchboxNode: SKNode, AnyNode {
    private var image : SKSpriteNode?
    private var roomWidth : CGFloat!
    var object: CollectableManager?
    var coordinator: Coordinator?
    var didUserTap = false

    init(_ roomWidth: CGFloat, object: CollectableManager, coordinator: Coordinator) {
        super.init()
        self.image = SKSpriteNode(imageNamed: ImageConstants.shared.LUNCHBOX)
        self.isUserInteractionEnabled = true
        self.roomWidth = roomWidth
        self.coordinator = coordinator
        self.object = object
        setupNode()
        self.addChild(self.image ?? SKSpriteNode())
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func setupPosition() {
        self.position = CGPoint(x: 0.87.vw(roomWidth), y: 0.43.vh)
    }
    
    func setupSize() {
        self.image!.size = CGSize(width: 0.08.vw(roomWidth), height: 0.15.vh)
    }
    
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        if !didUserTap {
            self.image?.removeFromParent()
            self.image = SKSpriteNode(imageNamed: ImageConstants.shared.LUNCHBOX_OPEN)
            setupNode()
            addChild(self.image ?? SKSpriteNode())
            didUserTap.toggle()
        } else {
            self.coordinator?.letterZoom()
        }
        
    }
}

