//
//  GameScene.swift
//  Carbunculo
//
//  Created by Jefferson de Oliveira Lalor on 21/05/19.
//  Copyright © 2019 CarbunculoTeam. All rights reserved.
//

import SpriteKit
import GameplayKit


class GameScene: SKScene {
    static let spritePixelsToScreenPixels: CGFloat = 1.0
    
    var entities = [GKEntity]()
    var graphs = [String : GKGraph]()
    
    private var remoteControl: RemoteControl?
    private var lastUpdateTime : TimeInterval = 0
    
    var entityManager: EntityManager!

    
    override func sceneDidLoad() {
        self.lastUpdateTime = 0
    }
    
    override func didMove(to view: SKView) {
        super.didMove(to: view)
        remoteControl = RemoteControl(view: view)
        
        entityManager = EntityManager(scene: self)
        
        do {
            let entidade = EntidadeCena(entityManager: entityManager, cena: self)
            let player   = Player(entityManager: entityManager)
            
            entityManager.add(player)
            entityManager.add(entidade)
            
            entities.append(player)
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
       //entityManager.jump()
        //
//        let entidade   = entities[0] as! Player
//        let componente = entidade.component(ofType: JumpingComponent.self)
//        componente!.jump()
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
    }
    
    override func touchesCancelled(_ touches: Set<UITouch>, with event: UIEvent?) {
    }
    
    
    override func update(_ currentTime: TimeInterval) {
        if (self.lastUpdateTime == 0) {
            self.lastUpdateTime = currentTime
        }
        
        // Calculate time since last update
        let dt = currentTime - self.lastUpdateTime
        
        // Update entities
        for entity in self.entities {
            if let remoteControl = remoteControl, let component = entity.component(ofType: ControlReceiverComponent.self) {
                component.updatePressedButtons(remoteControl.pressedButtons)
            }
            
            entity.update(deltaTime: dt)
        }
        
        self.lastUpdateTime = currentTime
    }
    
}
