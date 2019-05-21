//
//  EntityManager.swift
//  Carbunculo
//
//  Created by Jefferson de Oliveira Lalor on 21/05/19.
//  Copyright © 2019 CarbunculoTeam. All rights reserved.
//

import Foundation
import SpriteKit
import GameplayKit


class EntityManager {
    private(set) var componentsByNode = [SKNode: GKComponent]()
    private(set) var entities = Set<GKEntity>()
    let scene: SKScene
    
    
    init(scene: SKScene) {
        self.scene = scene
    }
    
    func add(_ entity: GKEntity) {
        entities.insert(entity)

        for component in entity.components {
            if let componentWithNodes = component as? ComponentsWithNodes {
                
                for node in componentWithNodes.nodesToAddToScene {
                    if node.parent == nil {
                        scene.addChild(node)
                    }
                }
                
                for node in componentWithNodes.nodesToAssociateWithComponent {
                    componentsByNode[node] = component
                }
                
            }
        }
        
    }
    func jump(){
        for entitie in entities{
            if let component = entitie.component(ofType: JumpingComponent.self)  {
                component.jump()
            }
        }
    }
}
