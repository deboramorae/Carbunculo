//
//  GameScene.swift
//  Carbunculo
//
//  Created by Jefferson de Oliveira Lalor on 21/05/19.
//  Copyright © 2019 CarbunculoTeam. All rights reserved.
//

import SpriteKit
import GameplayKit


class GameScene: SKScene, SKPhysicsContactDelegate {
    static let spritePixelsToScreenPixels: CGFloat = 1.0
    var entities = [GKEntity]()
    var graphs = [String : GKGraph]()
    private var swipe : Bool = false
    
    private var remoteControl: RemoteControl?
    private var lastUpdateTime : TimeInterval = 0
    
    var entityManager: EntityManager!
    static let playerJumpHeightFactor: CGFloat = 1.5
    static let playerJumpWidthFactor: CGFloat = 4
    

    override func sceneDidLoad() {
        self.lastUpdateTime = 0
        physicsWorld.contactDelegate = self
    }
    
    
    override func didMove(to view: SKView) {
        super.didMove(to: view)
        
        addSwipesGestures()
        
        entityManager = EntityManager(scene: self)
        
        do {
            let entidadeCena  = EntidadeCena(cena: self)
            
            let background = BackgroundEntity(entityManager: entityManager, texture: SKTexture.imageNamed.background1, position : CGPoint.initialPositionNode.backgroundNode)
            
            let background2 = BackgroundEntity(entityManager: entityManager, texture: SKTexture.imageNamed.background2, position: CGPoint.initialPositionNode.background2)
            
            let background3 = BackgroundEntity(entityManager: entityManager, texture: SKTexture.imageNamed.background3, position: CGPoint.initialPositionNode.background3)
            
            
            let floor = FloorEntity(entityManager: entityManager, cena: self, positionNode: CGPoint.initialPositionNode.floorNode, texture : SKTexture.imageNamed.floor, size: CGSize.sizeNode.floorNode)
            
            let floor2 = FloorEntity(entityManager: entityManager, cena: self, positionNode: CGPoint.initialPositionNode.floorNode2, texture: SKTexture.imageNamed.floor2, size: CGSize.sizeNode.floorNode)
            
            let floor3 = FloorEntity(entityManager: entityManager, cena: self, positionNode: CGPoint.initialPositionNode.floorNode3, texture: SKTexture.imageNamed.floor3, size: CGSize.sizeNode.floor3)

            let player        = Player(entityManager: entityManager)
            let entidadeWater = WaterEntity(entityManager: entityManager, cena: self, positionNode: CGPoint.initialPositionNode.waterNode, texture: SKTexture.imageNamed.water, size: CGSize.sizeNode.waterNode)
            let water2 = WaterEntity(entityManager: entityManager, cena: self, positionNode: CGPoint.initialPositionNode.water2, texture: SKTexture.imageNamed.water2, size: CGSize.sizeNode.waterNode2)
            let entityWood    = WoodEntity(entityManager: entityManager, scene: self)
            let entityPlatform = PlatformEntity(entityManager: entityManager, scene: self)
            let choise = ChoicesEntity(entityManager: entityManager, scene: self)
            let entityQuicksand = QuicksandEntity(entityManager: entityManager, scene: self)
            let entityFrutinha = MaracujaEntity(entityManager: entityManager, scene: self)

            entityManager.add(entidadeCena)
            
            entityManager.add(background)
            entityManager.add(background2)
            entityManager.add(background3)
            
            entityManager.add(floor)
            entityManager.add(floor2)
            entityManager.add(floor3)
            
            entityManager.add(player)
            entityManager.add(entityWood)
            entityManager.add(entityPlatform)
            entityManager.add(entidadeWater)
            entityManager.add(water2)
            entityManager.add(choise)
            
            entityManager.add(entityFrutinha)
            entityManager.add(entityQuicksand)

        }
    }
    
    func pauseScene(){
        self.isPaused = true
    }
    
    func UnpauseScene(){
        self.isPaused = false
    }
    
    func touchDown(atPoint pos : CGPoint) {
    }
    
    func touchMoved(toPoint pos : CGPoint) {
    }
    
    func touchUp(atPoint pos : CGPoint) {
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
    }
    
    override func touchesCancelled(_ touches: Set<UITouch>, with event: UIEvent?) {
    }
    
    func addSwipesGestures(){
        addSwipeGestureRecognizer(direction: .right,
                                  selector: #selector(GameScene.gestureSwipe))
    }
    
    func addSwipeGestureRecognizer(direction : UISwipeGestureRecognizer.Direction, selector : Selector) {
        
        let swipeGestureRecognizer = UISwipeGestureRecognizer(target: self, action: selector)
        swipeGestureRecognizer.direction = direction
        view?.addGestureRecognizer(swipeGestureRecognizer)
        addTapRecognizer()
    }
    
    @objc func gestureSwipe(_ sender : UIGestureRecognizer){
        swipe = true
        entityManager.run()
        
    }
    func addTapRecognizer() {
        let tap = UITapGestureRecognizer(target: self, action: #selector(handleTapVez(sender:)))
        view?.addGestureRecognizer(tap)
    }
    @objc func handleTapVez(sender: UITapGestureRecognizer) {
        if sender.state == UIGestureRecognizer.State.ended {
           entityManager.jump()
        }
    }
    override func update(_ currentTime: TimeInterval) {
        entityManager.updateCameraPosition()
        entityManager.update(deltaTime: currentTime)
    }
    
     func didBegin(_ contact: SKPhysicsContact) {
        var conjunto  = Set<String>()
        for nome in ["floor","wood","platform","invisibleNode"]{
                 conjunto.insert(nome)
        }
        
        var nodePlayer: SKNode!
        if(contact.bodyA.node!.name == "player" || contact.bodyB.node!.name == "player"){
            if(conjunto.contains(contact.bodyA.node!.name!)  || conjunto.contains(contact.bodyB.node!.name!)){
                if(contact.bodyA.node!.name == "player"){
                    nodePlayer = contact.bodyA.node!
                }else{
                    nodePlayer = contact.bodyB.node!
                }

                if(nodePlayer.physicsBody!.velocity.dy==0){
                    entityManager.playerLanding()
                }
                
                if(contact.bodyA.node!.name == "invisibleNode" || contact.bodyB.node!.name == "invisibleNode"){
                    var invisibleNode: InvisibleChoiceNode!
                    
                    if(contact.bodyA.node! == nodePlayer){
                        invisibleNode = (contact.bodyB.node! as! InvisibleChoiceNode)
                    }else{
                        invisibleNode = (contact.bodyA.node! as! InvisibleChoiceNode)
                    }
                    
                    let father = invisibleNode.parent
                    father?.isHidden = false
                    //funcaoParaConcelar
                }
                
            }

        }
    }
    
}

