//
//  SecondeTableNode.swift
//  dispersinhos
//
//  Created by sml on 25/10/22.
//

import SpriteKit

class SecondTableNode: SKNode, AnyNode {
    private var image : SKSpriteNode?
    private var roomWidth : CGFloat!
    var coordinator: Coordinator?

    init(_ roomWidth: CGFloat, coordinator: Coordinator) {
        super.init()
        self.image = SKSpriteNode(imageNamed: ImageConstants.shared.SECONDE_TABLE)
        self.isUserInteractionEnabled = true
        self.roomWidth = roomWidth
        self.coordinator = coordinator
        setupNode()
        self.addChild(self.image ?? SKSpriteNode())
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupPosition() {
        self.position = CGPoint(x: 0.8.vw(roomWidth), y: 0.46.vh)
    }
    
    func setupSize() {
        self.image!.size = CGSize(width: 0.29.vw(roomWidth), height: 0.4.vh)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.coordinator?.tilePuzzle()
    }
}
