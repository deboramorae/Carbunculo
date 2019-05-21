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
    
    var entities = [GKEntity]()
    var graphs = [String : GKGraph]()
    
    var entityManager: EntityManager!

    
    override func sceneDidLoad() {
    }
    
    override func didMove(to view: SKView) {
        super.didMove(to: view)
        
        entityManager = EntityManager(scene: self)
        
        do {
            let player = Player(entityManager: entityManager)
            
            entityManager.add(player)
        }
        
    }
    
    func touchDown(atPoint pos : CGPoint) {
 
    }
    
    func touchMoved(toPoint pos : CGPoint) {
    }
    
    func touchUp(atPoint pos : CGPoint) {
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
       entityManager.jump()
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
    }
    
}
