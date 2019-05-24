//
//  Floor.swift
//  Carbunculo
//
//  Created by Jefferson de Oliveira Lalor on 23/05/19.
//  Copyright © 2019 CarbunculoTeam. All rights reserved.
//

import Foundation
import GameplayKit


class FloorEntity: GKEntity {
    
    init(entityManager: EntityManager, cena: GameScene) {
        super.init()
        
        let floor = FloorNode(scene: cena)
        self.addComponentsToEntitie(cena: cena, node: floor)
    }
    
    func addComponentsToEntitie(cena: GameScene, node: FloorNode) {
        addComponent(GKSKNodeComponent(node: node))
        addComponent(FloorComponent(scene: cena))
        addComponent(FloorPhysicsBodyComponent(node: node, scene: cena))
        //addComponent(PhysicsBodyComponent(node: node, dimensions: PhysicsBodyDimensions(sizeSpritePixels: CGSize(width: cena.frame.width, height: 50), verticalShiftSpritePixels: CGFloat(0), horizontalShiftSpritePixels: CGFloat(0))))
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
