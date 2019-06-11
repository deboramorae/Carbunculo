//
//  ChoicesEntity.swift
//  Carbunculo
//
//  Created by Débora Moraes on 24/05/19.
//  Copyright © 2019 CarbunculoTeam. All rights reserved.
//

import Foundation
import GameplayKit

class ChoicesEntity: GKEntity{
    
    init(entityManager: EntityManager , scene: GameScene, textureDecisao: SKTexture, textureButton1: SKTexture, textureButton2: SKTexture, position: CGPoint, numberChoice: Int){
        super.init()
        addComponentsToEntities(scene: scene,textureDecisao: textureDecisao, textureButton1: textureButton1, textureButton2: textureButton2, position: position, numberChoice: numberChoice,manager: entityManager)
    }
    
    
    func addComponentsToEntities(scene : GameScene,textureDecisao: SKTexture, textureButton1: SKTexture, textureButton2: SKTexture, position: CGPoint, numberChoice: Int,manager:EntityManager){
        
        let invisibleNode = InvisibleChoiceNode()
        let nodeHUD = ChoicesHUDNode(textureDecisao: textureDecisao, textureButton1: textureButton1, textureButton2: textureButton2, cena: scene, numberChoice: numberChoice,manager:manager)
        nodeHUD.position = position
        
        addComponent(ChoicesNodeComponent(node: nodeHUD, scene: scene))
        addComponent(InvisibleChoiceComponent(node: invisibleNode, father: nodeHUD))
        addComponent(InvisibleChoicePhysicsBodyComponent(node: invisibleNode))
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
