//
//  MicrowaveNode.swift
//  Esca.pee
//
//  Created by sml on 01/11/22.
//

import SpriteKit

class MicrowaveNode: SKNode, AnyNode {

    private var image: SKSpriteNode?
    private var roomWidth: CGFloat!
    var object: CollectableManager?
    var didUserTap = false

    
    init(_ roomWidth: CGFloat, object: CollectableManager) {
        super.init()
        if (object.itemsUsed.contains(where: {$0 == object.mug_coffee.image}) && !(object.itemArray.contains(where: {$0.image == object.mug_card.image}))) {
            self.image = SKSpriteNode(imageNamed: ImageConstants.shared.MICROWAVE_MUG)
        } else {
            self.image = SKSpriteNode(imageNamed: ImageConstants.shared.MICROWAVE)
        }
        self.image = SKSpriteNode (imageNamed: ImageConstants.shared.MICROWAVE)
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
        self.position = CGPoint(x: 0.525.vw(roomWidth), y: 0.635.vh)
    }
    
    func setupSize() {
        self.image!.size = CGSize(width: 0.054.vw(roomWidth), height: 0.0694.vh)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        if !didUserTap {
            let i = object!.findIndex(item: object!.mug_coffee)
            if (i != -1) {
                if (object!.itemArray[i].isClicked) {
                    self.image?.removeFromParent()
                    self.image = SKSpriteNode(imageNamed: ImageConstants.shared.MICROWAVE_MUG)
                    self.addChild(self.image ?? SKSpriteNode())
                    object!.removeFromArray(item: object!.mug_coffee)
                    didUserTap.toggle()
                }
            }
        } else {
            if (object!.itemsUsed.contains(where: {$0 == object!.mug_coffee.image}) && !(object!.itemArray.contains(where: {$0.image == object!.mug_coffee.image}))) {
                object!.addToArray(item: object!.mug_card)
                self.image?.removeFromParent()
                self.image = SKSpriteNode(imageNamed: ImageConstants.shared.MICROWAVE)
                self.addChild(self.image ?? SKSpriteNode())
            }
        }
    }
}
