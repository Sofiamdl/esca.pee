//
//  NotebookNode.swift
//  Esca.pee
//
//  Created by LoreVilaca on 01/11/22.
//

import SpriteKit

class NotebookNode: SKNode, AnyNode {
    private var image: SKSpriteNode?
    private var roomWidth: CGFloat!
    var coordinator: Coordinator?
    
    init(_ roomWidth: CGFloat, coordinator: Coordinator) {
        super.init()
        self.image = SKSpriteNode(imageNamed: ImageConstants.shared.NOTEBOOK)
        self.roomWidth = roomWidth
        self.coordinator = coordinator
        setupNode()
        self.addChild(self.image ?? SKSpriteNode())
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupPosition() {
        self.position = CGPoint(x: 0.225.vw(roomWidth), y: 0.442.vh)
    }
    
    func setupSize() {
        self.image!.size = CGSize(width: 0.085.vw(roomWidth), height: 0.12.vh)
    }
    
    func setupAdditionalConfiguration() {
        self.isUserInteractionEnabled = true
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.coordinator?.tilePuzzle()
    }
}
