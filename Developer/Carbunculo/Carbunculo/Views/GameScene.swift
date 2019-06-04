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
            
            let background4 = BackgroundEntity(entityManager: entityManager, texture: SKTexture.imageNamed.background4, position: CGPoint.initialPositionNode.background4)
            
            let background5 = BackgroundEntity(entityManager: entityManager, texture: SKTexture.imageNamed.background5, position: CGPoint.initialPositionNode.background5)
            
            let floor = FloorEntity(entityManager: entityManager, cena: self, positionNode: CGPoint.initialPositionNode.floorNode, texture : SKTexture.imageNamed.floor, size: CGSize.sizeNode.floorNode)
            
            let entityPlatform = PlatformEntity(entityManager: entityManager, scene: self, texture: SKTexture.imageNamed.platform, position: CGPoint.initialPositionNode.platformNode, size: CGSize.sizeNode.platformNode)
            
            let platform2 = PlatformEntity(entityManager: entityManager, scene: self, texture: SKTexture.imageNamed.platform2, position: CGPoint.initialPositionNode.platform2, size: CGSize.sizeNode.platform2)
            
            let platform3 = PlatformEntity(entityManager: entityManager, scene: self, texture: SKTexture.imageNamed.platform3, position: CGPoint.initialPositionNode.platform3, size: CGSize.sizeNode.platform3)
            
            let platform4 = PlatformEntity(entityManager: entityManager, scene: self, texture: SKTexture.imageNamed.platform4, position: CGPoint.initialPositionNode.platform4, size: CGSize.sizeNode.platform4)
            
            let platform5 = PlatformEntity(entityManager: entityManager, scene: self, texture: SKTexture.imageNamed.platform4, position: CGPoint.initialPositionNode.platform5, size: CGSize.sizeNode.platform4)
            
            let platform6 = PlatformEntity(entityManager: entityManager, scene: self, texture: SKTexture.imageNamed.platform4, position: CGPoint.initialPositionNode.platform6, size: CGSize.sizeNode.platform4)
            
            let platform7 = PlatformEntity(entityManager: entityManager, scene: self, texture: SKTexture.imageNamed.platform4, position: CGPoint.initialPositionNode.platform7, size: CGSize.sizeNode.platformNode)
            
            let platform8 = PlatformEntity(entityManager: entityManager, scene: self, texture: SKTexture.imageNamed.platform4, position: CGPoint.initialPositionNode.platform8, size: CGSize.sizeNode.platformNode)
            
            let floor2 = FloorEntity(entityManager: entityManager, cena: self, positionNode: CGPoint.initialPositionNode.floorNode2, texture: SKTexture.imageNamed.floor2, size: CGSize.sizeNode.floorNode)
            
            let floor3 = FloorEntity(entityManager: entityManager, cena: self, positionNode: CGPoint.initialPositionNode.floorNode3, texture: SKTexture.imageNamed.floor3, size: CGSize.sizeNode.floor3)
            
            let floor4 = FloorEntity(entityManager: entityManager, cena: self, positionNode: CGPoint.initialPositionNode.floorNode4, texture: SKTexture.imageNamed.floor4, size: CGSize.sizeNode.floor4)
            
            let floor5 = FloorEntity(entityManager: entityManager, cena: self, positionNode: CGPoint.initialPositionNode.floorNode5, texture: SKTexture.imageNamed.floor5, size: CGSize.sizeNode.floor5)

            let player        = Player(entityManager: entityManager)
            let entidadeWater = WaterEntity(entityManager: entityManager, cena: self, positionNode: CGPoint.initialPositionNode.waterNode, texture: SKTexture.imageNamed.water, size: CGSize.sizeNode.waterNode)
            
            let water2 = WaterEntity(entityManager: entityManager, cena: self, positionNode: CGPoint.initialPositionNode.water2, texture: SKTexture.imageNamed.water2, size: CGSize.sizeNode.waterNode2)
            
            let water3 = WaterEntity(entityManager: entityManager, cena: self, positionNode: CGPoint.initialPositionNode.water3, texture: SKTexture.imageNamed.water3, size: CGSize.sizeNode.waterNode3)
            
            let entityWood    = WoodEntity(entityManager: entityManager, scene: self, positionNode: CGPoint.initialPositionNode.woodNode, texture: SKTexture.imageNamed.wood, size : CGSize.sizeNode.woodNode, sizePhysicsBody: CGSize.sizeNode.woodNode )
            
            let entityWood2   = WoodEntity(entityManager: entityManager, scene: self, positionNode: CGPoint.initialPositionNode.woodNode2, texture: SKTexture.imageNamed.wood2, size : CGSize.sizeNode.woodNode2, sizePhysicsBody: CGSize.sizeNode.wood2PhysicsBody)
            
            let entityWood3   = WoodEntity(entityManager: entityManager, scene: self, positionNode: CGPoint.initialPositionNode.woodNode3, texture: SKTexture.imageNamed.wood3, size : CGSize.sizeNode.woodNode3, sizePhysicsBody: CGSize.sizeNode.woodNode3 )
            
            let choise = ChoicesEntity(entityManager: entityManager, scene: self)
            
            let entityQuicksand = QuicksandEntity(entityManager: entityManager, scene: self)
            let entityFrutinha = MaracujaEntity(entityManager: entityManager, scene: self)
            let entityAnimal   = AnimalEntity(entityManager: entityManager, scene: self)
            
            let stone = StoneEntity(entityManager: entityManager, scene: self)
            let balao = BalaoEntity(entityManager: entityManager, scene: self)
            
            let windNode = WindEntity(entityManager: entityManager, scene: self, position: CGPoint.initialPositionNode.windNode)
             let windNode2 = WindEntity(entityManager: entityManager, scene: self, position : CGPoint.initialPositionNode.windNode2)
            
            
            entityManager.add(entidadeCena)
            
            entityManager.add(background)
            entityManager.add(background2)
            entityManager.add(background3)
            entityManager.add(background4)
            entityManager.add(background5)
            
            entityManager.add(floor)
            entityManager.add(floor2)
            entityManager.add(floor3)
            entityManager.add(floor4)
            entityManager.add(floor5)
            
            entityManager.add(player)
            entityManager.add(balao)
            
            entityManager.add(entityWood)
            entityManager.add(entityWood2)
            entityManager.add(entityWood3)
            
            entityManager.add(entityPlatform)
            entityManager.add(platform2)
            entityManager.add(platform3)
            entityManager.add(platform4)
            entityManager.add(platform5)
            entityManager.add(platform6)
            entityManager.add(platform7)
            entityManager.add(platform8)
            
            entityManager.add(entidadeWater)
            entityManager.add(water2)
            entityManager.add(water3)
            
            entityManager.add(choise)
            
            entityManager.add(entityFrutinha)
            entityManager.add(entityQuicksand)
            entityManager.add(entityAnimal)
            
            entityManager.add(stone)
            
            entityManager.add(windNode)
            entityManager.add(windNode2)
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
                //For test
                //TESTAR, SE FUNFAR BELEZA
                //FUNCIONOU, MAS TEM QUE SER MELHORADA
                if(nodePlayer.physicsBody!.velocity.dy<50 && nodePlayer.physicsBody!.velocity.dy > -50){
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
                    EntityManager.ischoosing = true
                }
                
            }

        }
        if(contact.bodyA.node?.name == "water" || contact.bodyB.node?.name == "water" ){
            (self.view!.window!.rootViewController as! GameViewController).restartScene()
        }
        if(contact.bodyA.node?.name == "frutinha" || contact.bodyB.node?.name == "frutinha" ){
        }
    }
}

