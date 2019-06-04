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
    init(entityManager: EntityManager , scene: GameScene){
        super.init()
        
        let nodeHUD = ChoicesHUDNode(cena: scene)
        let invisibleNode = InvisibleChoiceNode()
        
        addComponentsToEntities(scene: scene, nodeHUD: nodeHUD, invisibleNode: invisibleNode)
    }
    
    
    func addComponentsToEntities(scene : GameScene, nodeHUD: ChoicesHUDNode, invisibleNode: InvisibleChoiceNode){
        addComponent(ChoicesNodeComponent(node: nodeHUD, scene: scene))
        addComponent(InvisibleChoiceComponent(node: invisibleNode, father: nodeHUD))
        addComponent(InvisibleChoicePhysicsBodyComponent(node: invisibleNode))
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
