//
//  BathroomNode.swift
//  Esca.pee
//
//  Created by Guilherme Souza on 01/11/22.
//

import SpriteKit

class BathroomNode: SKNode, AnyNode {
    
    private var image: SKSpriteNode!
    private var roomWidth: CGFloat!
    
    var object: CollectableManager?
    var coordinator: Coordinator?
    
    private var doorAtlas: SKTextureAtlas {
        return SKTextureAtlas(named: "OpenDoor")
    }
        
    private var doorTexture: SKTexture {
        return doorAtlas.textureNamed("idle_1")
    }
        
    private var doorIdleTextures: [SKTexture] {
        return [
            doorAtlas.textureNamed("idle_1"),
            doorAtlas.textureNamed("idle_2"),
            doorAtlas.textureNamed("idle_3"),
            doorAtlas.textureNamed("idle_4"),
            doorAtlas.textureNamed("idle_5"),
            doorAtlas.textureNamed("idle_6"),
            doorAtlas.textureNamed("idle_7"),
            doorAtlas.textureNamed("idle_8"),
            doorAtlas.textureNamed("idle_9"),
            doorAtlas.textureNamed("idle_10"),
            doorAtlas.textureNamed("idle_11")
            
        ]
    }
    
    func startIdleAnimation() {
        let idleAnimation = SKAction.animate(with: doorIdleTextures, timePerFrame: 0.05)
        
        image.run(SKAction.repeat(idleAnimation, count: 1), withKey: "doorIdleAnimation")
    }

    init (_ roomWidth: CGFloat, object: CollectableManager, coordinator: Coordinator){
        super.init()
        self.image = SKSpriteNode(texture: doorTexture)
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
                self.startIdleAnimation()
                object?.cleanGame()
                DispatchQueue.main.asyncAfter(deadline: .now() + 6) {
                    self.coordinator?.gotoHomePage()
                }
            }
        }
        // mandar esse objeto pro itemDock -- como?
        // implementar isso em todos os coletáveis
        
    }
}
