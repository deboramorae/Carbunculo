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
            let background = BackgroundEntity(entityManager: entityManager)
            let floor = FloorEntity(entityManager: entityManager, cena: self)
            let player        = Player(entityManager: entityManager)
            let entidadeWater = WaterEntity(entityManager: entityManager, cena: self)
            let entityWood    = WoodEntity(entityManager: entityManager, scene: self)
            let entityPlatform = PlatformEntity(entityManager: entityManager, scene: self)
//            let choise = ChoicesEntity(entityManager: entityManager, scene: self)
            
            
            entityManager.add(entidadeCena)
            entityManager.add(background)
            entityManager.add(floor)
            entityManager.add(player)
            entityManager.add(entityWood)
            entityManager.add(entityPlatform)
//            entityManager.add(choise)
            
            entities.append(entidadeWater)
            
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
//        print(contact.bodyA.node?.name)
//        print(contact.bodyB.node?.name)
        var nodePlayer: SKNode!
        var nodeObstaculo: SKNode!
        if(contact.bodyA.node!.name == "player" || contact.bodyB.node!.name == "player"){
            if(contact.bodyA.node!.name == "floor" || contact.bodyB.node!.name == "floor"){
                if(contact.bodyA.node!.name == "floor"){
                    nodePlayer = contact.bodyA.node!
                }else{
                    nodePlayer = contact.bodyB.node!
                }
                
                if(nodePlayer.physicsBody!.velocity.dy==0){
                    entityManager.playerLanding()
                }
            }
            if(contact.bodyA.node!.name == "wood" || contact.bodyB.node!.name == "wood"){
                if(contact.bodyA.node!.name == "wood"){
                    nodeObstaculo    = contact.bodyA.node!
                    nodePlayer       = contact.bodyB.node!
                }else{
                    nodePlayer       = contact.bodyA.node!
                    nodeObstaculo    = contact.bodyB.node!
                }
                
                self.entityManager.playerLanding()
                nodePlayer.run(SKAction.moveBy(x: nodeObstaculo.position.x-100.0, y: nodeObstaculo.position.y, duration: 1))
            }

        }
    }
}
