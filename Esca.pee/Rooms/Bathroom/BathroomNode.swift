//
//  BathroomNode.swift
//  Esca.pee
//
//  Created by Guilherme Souza on 01/11/22.
//

import SpriteKit

class BathroomNode: SKNode, AnyNode {
    
    private var image: SKSpriteNode?
    private var roomWidth: CGFloat!
    
    var object: CollectableManager?
    var coordinator: Coordinator?

    init (_ roomWidth: CGFloat, object: CollectableManager, coordinator: Coordinator){
        super.init()
        self.image = SKSpriteNode(imageNamed: ImageConstants.shared.DOOR)
        self.roomWidth = roomWidth
        self.coordinator = coordinator
        self.object = object
        self.isUserInteractionEnabled = true
        setupNode()
        self.addChild(self.image ?? SKSpriteNode())
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupPosition() {
        self.position = CGPoint(x: 0.5.vw(roomWidth), y: 0.62.vh)
    }
    
    func setupSize() {
        self.image!.size = CGSize(width: 0.13.vw(roomWidth), height: 0.599.vh)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        let i = object!.findIndex(item: object!.key)
        if (i != -1) {
            if (object!.itemArray[i].isClicked) {
                print("Cabo")
                object?.cleanGame()
                coordinator?.gotoHomePage()
            }
        }
        // mandar esse objeto pro itemDock -- como?
        // implementar isso em todos os coletáveis
        
    }
}
