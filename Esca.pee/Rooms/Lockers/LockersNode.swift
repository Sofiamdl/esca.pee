//
//  LockersNode.swift
//  Esca.pee
//
//  Created by LoreVilaca on 01/11/22.
//

import SpriteKit

class LockersNode: SKNode, AnyNode {
    private var image: SKSpriteNode?
    private var roomWidth: CGFloat!
    var coordinator: Coordinator?
    var object: CollectableManager?

    init(_ roomWidth: CGFloat, coordinator: Coordinator, object: CollectableManager) {
        super.init()
        self.image = SKSpriteNode(imageNamed: ImageConstants.shared.LOCKERS)
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
        self.position = CGPoint(x: 0.5.vw(roomWidth), y: 0.56.vh)
    }
    
    func setupSize() {
        self.image!.size = CGSize(width: 0.5.vw(roomWidth), height: 0.52.vh)
    }
    
    func setupAdditionalConfiguration() {
        self.isUserInteractionEnabled = true
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        if (!(object!.itemArray.contains(where: {$0.image == object!.key.image}))) {
            self.coordinator?.lockerPassword()
        }
    }
    
}
